package OOPtry;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import javax.imageio.ImageIO;

public class PictureinOOP {

    public static void main(String[] args) {
        //Scanner
        Scanner sc = new Scanner(System.in);
        
        while(true) { //For continueing the program or shutting it down


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
        while(true) {
        System.out.println("Full picture or a specific part? Answer FP or SP");
        fullorPart = sc.nextLine();
            if (fullorPart.compareTo("FP") == 0) { // compare giver 0 hvis de to Strings er ens. https://docs.oracle.com/javase/7/docs/api/java/lang/String.html
                break;
            } else if(fullorPart.compareTo("SCALEFP") == 0) {
                break;
            } else if(fullorPart.compareTo("SP") == 0) {
                break;
            } else {
                System.out.print("Wrong answer, please try again: ");
            }
                    
        }
        
        // Setup roboClient
//        String hostName = "";
//        int port = 0;
//        RobotClient roboC = new  RobotClient(hostName, port);

        Scale scaledImage = new Scale(cImage);
        
        if(fullorPart.compareTo("FP") == 0) {

            Message code = new Message();
            String message = code.convertToMessage(pictureArray, cImage);
            //Draw full image 
            photo.drawImage(pictureArray);
            //Write full message
            System.out.println(message);

            //Connect and send to PLC
//          roboC.connect();
//          roboC.isConnected();
//          roboC.write(message);
//          roboC.disconnect();


        } else if(fullorPart.compareTo("SP") == 0) {
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
//          roboC.connect();
//          roboC.isConnected();
//          roboC.write(partMessage);
//          roboC.disconnect();

        }else if(fullorPart.compareTo("SCALEFP") == 0) {
            
            //Draw full image 
            int n = scaledImage.amountOfScaling(pictureArray);
            scaledImage.drawImage(pictureArray, n);
            String scaledMessage = scaledImage.convertToMessage(pictureArray, cImage, n);
            System.out.println(scaledMessage);
            System.out.println(scaledMessage.length());
            System.out.println(cImage.getHeight()*cImage.getWidth()/n);
            //Write full message

            //Connect and send to PLC
//          roboC.connect();
//          roboC.isConnected();
//          roboC.write(message);
//          roboC.disconnect();
            
        }
            
        //Continue?
        System.out.println("Continue");
        System.out.println(" YES/NO");
        String stopOrNot = sc.nextLine();
            if (stopOrNot.compareTo("NO") == 0 ) {
                break;
            }
        }
    }
}
