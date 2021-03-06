
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

    
//    public int comparingAmounts() {
//        if (this.pAmount > 165*165) {
//             return 1;
//        } else if(this.pAmount < 165*165) {
//            return -1;
//        } else {
//            return 0;
//        }   
//    }
    
    public void amountOfScaling(byte pictureArray[][]) {
        int limit = 165*165;  
        int n = 1000;
        while(true) {
                long divided = this.pAmount*1/n;
                this.spAmount = this.pAmount-divided; 
                
                if (this.spAmount < limit) {
                    this.n = n;
                    break;
                } else {
                    if (n > 1) {
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
        System.out.println(n);
    }
    
    public String convertToMessage(byte pictureArray[][], BufferedImage image, int n) {
        long h = 0;
        for(int y = 0; y < image.getHeight(); y++) {
            if(y%n != 0){
                for(int x = 0; x < image.getWidth(); x++) {        
                    if(x%n != 0) {
                        if(pictureArray[y][x] == 0) {
                           upOrDown = '0';
                           h++;
                        } else {
                           upOrDown = '1';
                           h++;
                        }
                        message = message + upOrDown;
                        if(x < image.getWidth()-1) {
                            message = message + 'R' ;
                            h++;
                        }
                    }
                }
                message = message + 'N';
                h++;
            }
        }
        message = message + 'Q';
        h++;
        return  h + message;
    }
    
    
}
