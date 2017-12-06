/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OOPtry;


import java.awt.image.BufferedImage;
import java.util.ArrayList;

/**
 *
 * @author cubey
 */
public class DimensionChange {
    private char upOrDown;
    private String message = "";
    private int pixelJump = 3;
    
    DimensionChange() {
        
    }
    
    public void convertToScaledMessage(byte pictureArray[][], BufferedImage image) {

        // mængde af pixels
        // Ud fra mængden set denne metode igennem.
        // Travaser arrayet og ud fra mængden, tegn kun et hvis antal af pixelsne. (interval messigt.
        double pixelMax = Math.pow(165.0, 2);
        int pixelAtHeight = image.getHeight()/165;
        int pixelAtWidth = image.getWidth()/165;


        ArrayList<ArrayList<Integer>> scaledPicturePartOne = new ArrayList<>();
        ArrayList<Integer> scaledPicturePartTwo = new ArrayList<>();

        for(int y = 0; y < image.getHeight(); y = y + pixelJump) {
            for(int x = 0; x < image.getWidth(); x = x + pixelJump) {  
                int i = pictureArray[y][x];
                scaledPicturePartTwo.add(i);
                }
            scaledPicturePartOne.add(scaledPicturePartTwo);
        }

        //   Kode kendte jeg til, men fandt præcise måde at skrive på her:   https://stackoverflow.com/questions/5374311/convert-arrayliststring-to-string-array
        Integer[] array = new Integer[scaledPicturePartTwo.size()];
        array = scaledPicturePartTwo.toArray(array);

        Integer[][] array2D = new Integer[scaledPicturePartOne.size()][];
        //   Kode jeg igen kender til igen, men skulle opfriskes https://stackoverflow.com/questions/28564157/how-to-fill-a-2d-array-with-a-1d-array
        //   Har skrevet om så det kan være den benytter lidt af samme af layout som i image.
        for(int x = 0; x < array2D.length; x++) {
            array2D[x] = array;
        }
        System.out.println();
        for(int x = 0; x < array2D.length; x++) {
            for(int y = 0; y < array2D[x].length; y++) {
                if (array2D[x][y] == 1) {
                    System.out.print('1');
                }
                else if(array2D[x][y] == 0) {
                    System.out.print('0');
                }

            }
            System.out.println();
        }
    }
}