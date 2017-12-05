package OOPtry;

import java.awt.image.BufferedImage;

public class Message {
    private char upOrDown;
    private String message = "";
    
    Message() {
        
    }
    
//    public String convertToMessage(byte pictureArray[][], BufferedImage image) {
//        for(int y = 0; y < image.getHeight(); y++) {
//            for(int x = 0; x < image.getWidth(); x++) {        
//                if(pictureArray[y][x] == 0) {
//                   upOrDown = '0';
//                } else {
//                   upOrDown = '1';
//                }
//                message = message + upOrDown;
//                if(x < image.getWidth()-1) {
//                    message = message + 'R' ;
//                }
//            }
//            message = message + 'N';
//        }
//        message = message + 'Q';
//        
//        return  message;
//    }
    
    public String convertToMessage(byte pictureArray[][], BufferedImage image) {
        for(int y = image.getHeight(); y > 0; y++) {
            for(int x = image.getWidth(); x > 0; x++) {        
                if(pictureArray[y][x] == 0) {
                   upOrDown = '0';
                } else {
                   upOrDown = '1';
                }
                message = message + upOrDown;
                if(x == 1) {
                    message = message + 'R' ;
                }
            }
            message = message + 'N';
        }
        message = message + 'Q';
        
        return  message;
    }
}
