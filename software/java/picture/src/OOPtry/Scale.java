
package OOPtry;

import java.awt.image.BufferedImage;

public class Scale {
    private int iHeight;
    private int iWidth;            
    private long pAmount;
    private long spAmount;
    private int n = 1000;
    
    
    private char upOrDown;
    private String message = "";
    
    
    Scale(BufferedImage image) {
        this.iHeight = image.getHeight();
        this.iWidth = image.getWidth();
        this.pAmount = this.iHeight*this.iWidth;
    }


    public int getValueN() {
        return this.n;
    }
    
    public long getValueSPAmount() {
        return this.spAmount;
    }
    
    public long getValuePAmount() {
        return this.pAmount;
    }

    // Full scaled picture
    
    public void amountOfScaling(byte pictureArray[][]) {
        int limit = 257*257;  
        int n = 1000;
        while(true) {
                long divided = this.pAmount*1/n;
                this.spAmount = this.pAmount-divided; 
                
                if (this.spAmount < limit || n == 2) {
                    this.n = n;
                    System.out.println("It is alright O-O" + n);
                    break;
                } else {
                    if (n > 2) {
                        n--;
                    }
                }
        }
    }
    
    public void drawImage(byte pictureArray[][], int n) {
        for(int y = 0; y < this.iHeight; y++) {
            if (y%n != 0) {
                
                for(int x = 0; x < this.iWidth; x++) {

                    if(x%n != 0) {
                        if(pictureArray[x][y] == 0) {
                            System.out.print("0 ");
                        } else {
                            System.out.print("1 ");
                        }
                    }
                    
                }
                System.out.println();
            }
        }
    }
    
    public String convertToMessage(byte pictureArray[][], BufferedImage image, int n) {
        
        for(int y = 0; y < image.getHeight(); y++) {
            if(y%n != 0) {
                for(int x = 0; x < image.getWidth(); x++) {        
                    if(x%n != 0) {
                        if(x < image.getHeight() && y < image.getWidth()) {
                            if(pictureArray[y][x] == 0) {
                               upOrDown = '0';
                            } else {
                               upOrDown = '1';
                            }
                            message = message + upOrDown;
                        }
                        
                        if(x < image.getWidth()-2) {
                            message = message + 'R' ;
                        }
                    }
                }
                message = message + 'N';
            }
        }
        message = message + 'Q';
        
        return  message;
    }
    
    
    // part of scaled picture

    public String scaledMessagePart(int x1,int y1, int x2,int y2, byte pictureArray[][], int n) {
        
        for(int y = y1; y < y2; y++) {
            if(y%n != 0) {
                for(int x = x1; x < x2; x++) { 
                    if(x%n != 0) { 
                        if (pictureArray[y][x] == 1) {
                           upOrDown = '1';
                        } else {
                           upOrDown = '0';
                        }
                        message = message + upOrDown;
                        if(x < x2-2) {
                            message = message + 'R' ;
                        }
                    }
                }   
                message = message + 'N';
            }
        }
        message = message + 'Q';
        return message;
    }
    
    
    public void drawImage(int x1,int y1, int x2,int y2,byte pictureArray[][], int n) {
        for(int y = y1; y < y2; y++) {
            if(y%n != 0) { 
                for(int x = x1; x < x2; x++) {
                    if(x%n != 0) { 
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
    }
}
