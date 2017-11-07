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
    int iHeight;
    int iWidth;

    
    Image (int newIheight, int newIwidth) {
        this.iHeight = newIheight;
        this.iWidth = newIwidth;
    }
    
    
        
    public void assempleImage(byte pixelspls[][], BufferedImage image) {
        Color ofPicture = new Color(); 
        for(int x = 0; x < this.iWidth; x++) {
            pixelspls[x] = new byte[this.iHeight];
            for(int y = 0; y < this.iHeight; y++) {
                
                ofPicture.RGB = image.getRGB(x, y);
                ofPicture.red = (ofPicture.RGB>>16)&0xff;
                ofPicture.green = (ofPicture.RGB>>8)&0xff;
                ofPicture.blue = ofPicture.RGB&0xff;                 //(newRPG>>0)&0xff.
                
                int average = ofPicture.getAverage();

                image.setRGB(x, y, average);
             
                System.out.print(average + " ");                    // Behøves ikke. Er til at teste.
                
                if(average >= 160) {
                    pixelspls[x][y] = (byte)(0);
                } else {
                    pixelspls[x][y] = (byte)(1);    
                }
            }
        }
    }
        
    
        
    public void drawImage(byte pixelspls[][]) {
        for(int y = 0; y < this.iHeight ; y++) {
            for(int x = 0; x < this.iWidth; x++) {
                if(pixelspls[x][y] == 0) {
                    System.out.print("0 ");
                } else {
                    System.out.print("1 ");
                }
            }
            System.out.println();
        }
    }
}
