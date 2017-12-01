package picture;

//import java.awt.Canvas;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import dk.sdu.mmmi.rd1.edgedetect.EdgeDetector; //NULLERMAND
import java.awt.Color;
import java.util.Scanner;
//import javax.swing.JFileChooser;                                                                              

public class PictureBu {

    public static void main(String[] args) {

        /*
        EdgeDetector d = new EdgeDetector("Star.png");  //NULLERMAND
        Picture f = new Picture(new File("Star.png"));
        // Read file
        Color[][] h = d.getGreyscaleArray();
        Color i = h[d.getWidth][d.getHeight];
        System.out.print(i);
        
        // Get color for pixels
        // 
        
       */ 
        
        
        
        
//        System.out.print(System.getProperty("user.dir"));
//        
//    }

//        JFileChooser fileChooser = new JFileChooser();
//        fileChooser.setCurrentDirectory(new File(System.getProperty("user.dir")));
//        int result;
//        result = fileChooser.showOpenDialog(new Canvas());
//        if (result == JFileChooser.APPROVE_OPTION) {
//            File selectedFile = fileChooser.getSelectedFile();
//            System.out.println("Selected file: " + selectedFile.getAbsolutePath());
//        }        
        
        
        Scanner sc = new Scanner(System.in);
        System.out.println("Write picture file name:"); //Star.png
        String fileName = sc.nextLine();
        BufferedImage cImage = null;
        try {
            cImage = ImageIO.read(new File(fileName)); // placeringen af filen er relativ til java filen.
        } catch (IOException e) {

        }
        byte[][] pixels = new byte[cImage.getWidth()][];
        
        for(int x = 0; x < cImage.getWidth(); x++) {
            pixels[x] = new byte[cImage.getHeight()];
            for(int y = 0; y < cImage.getHeight(); y++) {
                if(cImage.getRGB(x, y) == 0xFFFFFFFF) {
                    pixels[x][y] = (byte)(1);
                } else {
                    pixels[x][y] = (byte)(0);    
                }
            }
        }
        


        for(int y = 0; y < cImage.getHeight(); y++) {
            for(int x = 0; x < cImage.getWidth(); x++) {
                if(pixels[x][y] == 1) {
                    System.out.print("1 ");
                } else {
                    System.out.print("0 ");
                }
            }
            System.out.println();
        }
        
        //Convert picture to String
        String original = "";
        char upOrDown;
        char newLine = 'N';
        char right = 'R';
        for(int y = 0; y < cImage.getHeight(); y++) {
            for(int x = 0; x < cImage.getWidth(); x++) {
                
                if(pixels[y][x] == 1) {
                       upOrDown = '1';
                    } else {
                       upOrDown = '0';
                }
                original = original + upOrDown;
                if(x < cImage.getWidth()-1) {
                    original = original + 'R' ;
                }
            }
            original = original + 'N';
        }
        System.out.println(original);
    }
}
