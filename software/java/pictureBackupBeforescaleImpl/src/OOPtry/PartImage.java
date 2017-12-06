
package OOPtry;



public class PartImage {
    private String message = "";
    private char upOrDown;        
            
    PartImage() {
        
    }
    public String messagePart(int x1,int y1, int x2,int y2, byte pictureArray[][]) {
        
        for(int y = y1; y < y2; y++) {
            for(int x = x1; x < x2; x++) {
                if (pictureArray[y][x] == 1) {
                   upOrDown = '1';
                } else {
                   upOrDown = '0';
                }
                message = message + upOrDown;
                if(x < x2-1) {
                    message = message + 'R' ;
                }
            }   
            message = message + 'N';
        }
        message = message + 'Q';
        return message;
    }
    
    
    
    public void drawImage(int x1,int y1, int x2,int y2,byte pictureArray[][]) {
        for(int y = y1; y < y2; y++) {
            for(int x = x1; x < x2; x++) {
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
