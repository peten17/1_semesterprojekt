package OOPtry;

import java.awt.image.BufferedImage;

public class Message {
    private char upOrDown;
    private String original = "";
    
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
                original = original + upOrDown;
                if(x < image.getWidth()-1) {
                    original = original + 'R' ;
                }
            }
            original = original + 'N';
        }
        original = original + 'Q';
        
        return  original;
    }
    
    
}
