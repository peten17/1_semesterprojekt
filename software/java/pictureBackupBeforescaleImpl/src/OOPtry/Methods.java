package OOPtry;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import javax.imageio.ImageIO;

public class Methods {
    
    
    public Methods() {
        
    }
    
    BufferedImage cImage = null;
    // Method for reading picture
    public void reader() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Write picture file name:"); //Star.png
        String fileName = sc.nextLine();


        try {
            cImage = ImageIO.read(new File(fileName)); // placeringen af filen er relativ til java filen.
        } catch (IOException e) {

        }
    }
    
    
    
    byte[][] colorPixels = new byte[cImage.getWidth()][];
    
// Picture to binarry multyarray
    public void PiToBima() {
               
        for(int x = 0; x < cImage.getWidth(); x++) {
            colorPixels[x] = new byte[cImage.getHeight()];
            for(int y = 0; y < cImage.getHeight(); y++) {
                int RGB = cImage.getRGB(x, y);
                // int alpha = (RGB>>24)&0xff;
                int red = (RGB>>16)&0xff;
                int green = (RGB>>8)&0xff;
                int blue = RGB&0xff;                 //(newRPG>>0)&0xff
                
                int average = (red + green + blue)/3;

                cImage.setRGB(x, y, average);
             
                System.out.print(average + " ");
                
                if(average >= 160) {
                    colorPixels[x][y] = (byte)(0);
                } else {
                    colorPixels[x][y] = (byte)(1);    
                }
            }
        }
    }
    
    // Draw picture 
    public void draw() {
        for(int y = 0; y < cImage.getHeight(); y++) {
            for(int x = 0; x < cImage.getWidth(); x++) {
                if(colorPixels[x][y] == 0) {
                    System.out.print("0 ");
                } else {
                    System.out.print("1 ");
                }
            }
            System.out.println();
        }
    }
    // Convert picture to String
    public void INstructString() {
        String original = "";
        char upOrDown;
        for(int y = 0; y < cImage.getHeight(); y++) {
            for(int x = 0; x < cImage.getWidth(); x++) {
                
                if(colorPixels[y][x] == 0) {
                       upOrDown = '0';
                    } else {
                       upOrDown = '1';
                }
                original = original + upOrDown;
                if(x < cImage.getWidth()-1) {
                    original = original + 'R' ;
                }
            }
            original = original + 'N';
        }
        original = original + 'Q';
        System.out.println(original);
    }






}