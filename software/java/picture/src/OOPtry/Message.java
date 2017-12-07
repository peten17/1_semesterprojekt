package OOPtry;

import java.awt.image.BufferedImage;

public class Message {
    private char upOrDown;
    private String message;
    
    Message() {
        message = "";
    }
    
    public String convertToMessage(byte pictureArray[][], BufferedImage image) {
        for(int y = 0; y < image.getHeight(); y++) {
            for(int x = 0; x < image.getWidth(); x++) {        
                if(x < image.getHeight() && y < image.getWidth()) {
                    
                    if(pictureArray[y][x] == 0) {
                       upOrDown = 'U';
                    } else {
                       upOrDown = 'D';
                    }
                    message = message + upOrDown;
                }
            }
            message = message + 'N';
        }
        message = message + 'Q';
        
        return  message;
    }
    
    
}
