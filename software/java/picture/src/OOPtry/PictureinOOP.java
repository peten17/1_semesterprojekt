package OOPtry;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import javax.imageio.ImageIO;

public class PictureinOOP {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Write picture file name:"); //Star.png
        String fileName = sc.nextLine();
        
        BufferedImage cImage = null;
        try {
            cImage = ImageIO.read(new File(fileName)); // placeringen af filen er relativ til java filen.
        } catch (IOException e) {
  
        }
       
//        DimensionChange dimensions = new DimensionChange();
//        System.out.println(dimensions.getPreferredSize(cImage));
        
        
        
        //Multiarray initializing and creating.
        byte[][] pixels = new byte[cImage.getWidth()][];
        
        
        //Image initializing
        int h = cImage.getHeight();
        int w = cImage.getWidth();
        Image mim = new Image(h,w);
        
        //Multiarray filling
        mim.assempleImage(pixels, cImage);
        
        //Draw image
        mim.drawImage(pixels);

        //Convert picture to String
        Message code = new Message();
        String message = code.convertToMessage(pixels, cImage);
        System.out.print(message);
    }
}
