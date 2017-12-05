/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OOPtry;

import java.awt.image.BufferedImage;

/**
 *
 * @author cubey
 */
public class Image {
    private int iHeight;
    private int iWidth;

    
    Image (int newIheight, int newIwidth) {
        this.iHeight = newIheight;
        this.iWidth = newIwidth;
    }
    
    
        
    public void assempleImage(byte pictureArray[][], BufferedImage image) {
        Color ofPicture = new Color(); 
        for(int x = 0; x < this.iWidth; x++) {
            pictureArray[x] = new byte[this.iHeight]; // Indsætning af array i multiarrayet
            for(int y = 0; y < this.iHeight; y++) {
                
                ofPicture.setCrgb(image.getRGB(x, y));
                ofPicture.setRed((ofPicture.getCrgb()>>16)&0xff);
                ofPicture.setGreen((ofPicture.getCrgb()>>8)&0xff);
                ofPicture.setBlue(ofPicture.getCrgb()&0xff);                 //(newRPG>>0)&0xff.
                
                int average = ofPicture.getAverage();

                image.setRGB(x, y, average);
             
//                System.out.print(average + " ");                    // Behøves ikke. Er til at teste.
                
                if(average >= 160) {
                    pictureArray[x][y] = (byte)(0);
                } else {
                    pictureArray[x][y] = (byte)(1);    
                }
            }
        }
    }
        
    
        
    public void drawImage(byte pictureArray[][]) {
        for(int y = 0; y < this.iHeight ; y++) {
            for(int x = 0; x < this.iWidth; x++) {
                if(pictureArray[x][y] == 0) {
                    System.out.print("0 ");
                } else {
                    System.out.print("1 ");
                }
            }
            System.out.println();
        }
    }
}
