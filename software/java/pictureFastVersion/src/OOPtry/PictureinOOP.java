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

            BufferedImage cImage = null; //Forskel på declaration og initialization
            String fileName = "Star.png"; 
            try {
                cImage = ImageIO.read(new File(fileName)); // placeringen af filen er relativ til java filen. https://docs.oracle.com/javase/7/docs/api/javax/imageio/ImageIO.html#read(java.io.File)
            } catch (IOException | IllegalArgumentException e) { // | er en bitwis OR operator. hvis enten det på højre eller venstre side af en bitvis OR operator er 1, så giver det 1. https://docs.oracle.com/javase/7/docs/technotes/guides/language/catch-multiple.html
             
            }
            
            //Multiarray initializing and creating.
            byte[][] pictureArray = new byte[cImage.getWidth()][];
            
            //Image initializing
            int h = cImage.getHeight();
            int w = cImage.getWidth();
            Image photo = new Image(h,w);

            //Multiarray filling
            photo.assempleImage(pictureArray, cImage);

            // Setup roboClient
            String hostName = "192.168.0.103";
            int port = 12345;
            RobotClient roboC = new RobotClient(hostName, port);
            
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
