
package OOPtry;

public class Color {
    private int rgb;
    private int red;
    private int green;
    private int blue;                 
    private int average; 
    
    Color() {
    }
    
    public int getAverage() {
        average = this.average = (this.red + this.green + this.blue)/3;
        return this.average;
    } 
  
    public int getCrgb() {
        return this.rgb;
    }
    
    public void setRed(int newRed) {
        this.red = newRed;
    }

    public void setGreen(int newGreen) {
        this.green = newGreen;
    } 
    
    public void setBlue(int newBlue) {
        this.blue = newBlue;
    } 
  
    public void setCrgb(int newRGB) {
        rgb = newRGB ;
    } 
    

    
}
