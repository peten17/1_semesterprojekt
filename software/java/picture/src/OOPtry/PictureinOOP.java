package OOPtry;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import javax.imageio.ImageIO;

public class PictureinOOP {

    public static void main(String[] args) {
 
        
        while(true) { //For continueing the program or shutting it down

        //Scanner
        Scanner sc = new Scanner(System.in);
            
        String fileName;
        BufferedImage cImage = null; //Forskel på declaration og initialization
        
        while(true){
            System.out.println("Write picture file name:"); //Star.png
            fileName = sc.nextLine();
            
            try {
                cImage = ImageIO.read(new File(fileName)); // placeringen af filen er relativ til java filen. https://docs.oracle.com/javase/7/docs/api/javax/imageio/ImageIO.html#read(java.io.File)
                break;
            } catch (IOException | IllegalArgumentException e) { // | er en bitwis OR operator. hvis enten det på højre eller venstre side af en bitvis OR operator er 1, så giver det 1. https://docs.oracle.com/javase/7/docs/technotes/guides/language/catch-multiple.html

            }
        }

        
        //Multiarray initializing and creating.
        byte[][] pictureArray = new byte[cImage.getWidth()][];
        
        
        //Image initializing
        int h = cImage.getHeight();
        int w = cImage.getWidth();
        Image photo = new Image(h,w);
        
        //Multiarray filling
        photo.assempleImage(pictureArray, cImage);
                
        //Amount of pixels
        System.out.println("Limit: " + 165*165 + ". Amount of pixels: " + cImage.getWidth()*cImage.getHeight() + "." );
        
        //Full or partly drawn?
        String fullorPart = "";
        boolean fullScaleNeeded = false;
        boolean partlyScaleNeeded = false;
        boolean fullPicture = false;
        boolean picturePart = false;
        
        while(true) {
            if(cImage.getHeight()*cImage.getWidth() < 257*257) {
                System.out.println("Full picture or a specific part? Answer FP or SP");
                fullorPart = sc.nextLine();
                
                if (fullorPart.compareTo("FP") == 0) { // compare giver 0 hvis de to Strings er ens. https://docs.oracle.com/javase/7/docs/api/java/lang/String.html
                    fullPicture = true;
                    break;
                } else if(fullorPart.compareTo("SP") == 0) {
                    picturePart = true;
                    break;
                } else {
                    System.out.print("Wrong answer, please try again: ");
                }
            } else {
                System.out.println("1Full picture or a specific part? Answer FP or SP");
                fullorPart = sc.nextLine();
         
                if (fullorPart.compareTo("FP") == 0) { // compare giver 0 hvis de to Strings er ens. https://docs.oracle.com/javase/7/docs/api/java/lang/String.html
                    fullScaleNeeded = true;
                    break;
                } else if(fullorPart.compareTo("SP") == 0) {
                    partlyScaleNeeded = true;
                    break;
                } else {
                    System.out.print("Wrong answer, please try again: ");
                }
            }
        }
        
        // Setup roboClient
        String hostName = "192.168.0.103";
        int port = 12345;
        RobotClient roboC = new  RobotClient(hostName, port);

        Scale scaledImage = new Scale(cImage);
        
        if(fullPicture) {

            Message code = new Message();
            String message = code.convertToMessage(pictureArray, cImage);
            //Draw full image 
            photo.drawImage(pictureArray);
            //Write full message
            System.out.println(message);

            //Connect and send to PLC
            roboC.connect();
            if(roboC.isConnected()){
                roboC.write(message);
                System.out.println("Message send");
              
                System.out.println("Disconnect?");
                String disconnectOrNot = sc.nextLine();
                if (disconnectOrNot.compareTo("YES") == 0 ) {
                    roboC.disconnect();
                }
            }

          
    


        } else if(picturePart) {
            System.out.println("Specific part? Alright, please type in two x-values and y-values");
            System.out.println("values for " + "x, has to value within: " + cImage.getWidth() + "and y, within: " + cImage.getHeight());
            System.out.println("x1 has to be smaller than x2 and so goes for y1 and y2");

            System.out.println("x1: ");
            int x1 = sc.nextInt();
            System.out.println("x2: ");
            int x2 = sc.nextInt();
            System.out.println("y1: ");
            int y1 = sc.nextInt();
            System.out.println("y2: ");
            int y2 = sc.nextInt();

            PartImage part = new PartImage();
            String partMessage = part.messagePart(x1, y1, x2, y2, pictureArray);
            //Draw part of immage
            part.drawImage(x1, y1, x2, y2,pictureArray);

            //Write part of message
            System.out.println(partMessage);

            //Connect and send to PLC
            roboC.connect();
            if(roboC.isConnected()){
                roboC.write(partMessage);
                System.out.println("Message send");
              
                System.out.println("Disconnect?");
                String disconnectOrNot = sc.nextLine();
                if (disconnectOrNot.compareTo("YES") == 0 ) {
                   roboC.disconnect();
                }
            }

          
    

        }else if(fullScaleNeeded) {
            
            //Draw scaled image
            scaledImage.amountOfScaling(pictureArray);
            
            int n = scaledImage.getValueN();
//            long scaledPixelAmount = scaledImage.getValueSPAmount();
            scaledImage.drawImage(pictureArray, n);
            String scaledMessage = scaledImage.convertToMessage(pictureArray, cImage, n);
            System.out.println(scaledMessage);
//            System.out.println("Scaled message, length: " + scaledMessage.length());
//            System.out.println("n has the value: " + n);
//            System.out.println("The scaled pictures amount of pixels: " + scaledPixelAmount);
//            System.out.println("The original pictures amount of pixels: " + scaledImage.getValuePAmount());
            
            //Write scaled message

            //Connect and send to PLC
            roboC.connect();
            if(roboC.isConnected()){
                roboC.write(scaledMessage);
                System.out.println("Message send");
            }
            System.out.println("Disconnect?");
            String disconnectOrNot = sc.nextLine();
            if (disconnectOrNot.compareTo("YES") == 0 ) {
                roboC.disconnect();
            }
          
          
            
        }else if(partlyScaleNeeded) {
            
            System.out.println("Specific part? Alright, please type in two x-values and y-values");
            System.out.println("values for " + "x, has to value within: " + cImage.getWidth() + "and y, within: " + cImage.getHeight()); //scaller billedet først. og få denne string til at afhænge af det nye billede
            System.out.println("x1 has to be smaller than x2 and so goes for y1 and y2");

            System.out.println("x1: ");
            int x1 = sc.nextInt();
            System.out.println("x2: ");
            int x2 = sc.nextInt();
            System.out.println("y1: ");
            int y1 = sc.nextInt();
            System.out.println("y2: ");
            int y2 = sc.nextInt();
            
            
            
            //Draw part of scaled image
            scaledImage.amountOfScaling(pictureArray);
            int n = scaledImage.getValueN();
            scaledImage.drawImage(x1, y1, x2, y2, pictureArray, n);
            
            //Write part of scaled message
            String scaledMessagePart = scaledImage.scaledMessagePart(x1, y1, x2, y2, pictureArray, n);
            System.out.println(scaledMessagePart);
            
            //Connect and send to PLC
            roboC.connect();
            if(roboC.isConnected()){
                roboC.write(scaledMessagePart);
                System.out.println("Message send");
            }
            System.out.println("Disconnect?");
            String disconnectOrNot = sc.nextLine();
            if (disconnectOrNot.compareTo("YES") == 0 ) {
                roboC.disconnect();
            }
          
          
            
        }
            
        //Continue?
        System.out.println("Continue?");
        System.out.println(" YES/NO");
        String stopOrNot = sc.nextLine();
            if (stopOrNot.compareTo("NO") == 0 ) {
                break;
            }
        }
    }
}
