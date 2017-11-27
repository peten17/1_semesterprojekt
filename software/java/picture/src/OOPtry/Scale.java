
package OOPtry;

import java.awt.image.BufferedImage;

public class Scale {
    private int iHeight;
    private int iWidth;            
    private long pAmount = iHeight*iWidth;
    
    private char upOrDown;
    private String message = "";
    
    Scale(BufferedImage image) {
        this.iHeight = image.getHeight();
        this.iWidth = image.getWidth();
    }
    
    public int comparingAmounts() {
        if (this.pAmount > 165*165) {
             return 1;
        } else if(this.pAmount < 165*165) {
            return -1;
        } else {
            return 0;
        }   
    }
    
    public int amountOfScaling(byte pictureArray[][]) {
        int limit = 165*165;  
        int n = 2;
        while(true) {
            if (pAmount%n == 0) {
                if (pAmount/n < limit) {
                    break;
                }
            }
            n++;
        }
        return n;
    }
    
    public void drawImage(byte pictureArray[][], int n) {
        for(int y = 0; y < this.iHeight - n; y = y + n) {
            for(int x = 0; x < this.iWidth - n; x = x + n) {
                if(pictureArray[x][y] == 0) {
                    System.out.print("0 ");
                } else {
                    System.out.print("1 ");
                }
            }
            System.out.println();
        }
        System.out.println(n);
    }
    
        public String convertToMessage(byte pictureArray[][], BufferedImage image, int n) {
        for(int y = 0; y < image.getHeight() - n; y = y + n) {
            for(int x = 0; x < image.getWidth() - n; x = x + n) {        
                if(pictureArray[y][x] == 0) {
                   upOrDown = '0';
                } else {
                   upOrDown = '1';
                }
                message = message + upOrDown;
                if(x < image.getWidth()-n+1) {
                    message = message + 'R' ;
                }
            }
            message = message + 'N';
        }
        message = message + 'Q';
        
        return  message;
    }
    
    
}
