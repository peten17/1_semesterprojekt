package OOPtry;

import java.awt.image.BufferedImage;

public class Message {
    private char upOrDown;
    private String message = "";
    
    Message() {
        
    }
    
    public String convertToMessage(byte pixelspls[][], BufferedImage image) {
        for(int y = 0; y < image.getHeight(); y++) {
            for(int x = 0; x < image.getWidth(); x++) {        
                if(pixelspls[y][x] == 0) {
                   upOrDown = '0';
                } else {
                   upOrDown = '1';
                }
                message = message + upOrDown;
                if(x < image.getWidth()-1) {
                    message = message + 'R' ;
                }
            }
            message = message + 'N';
        }
        message = message + 'Q';
        
        return  message;
    }
    
    
}
