
package OOPtry;

public class Color {
    int rgb;
    int red;
    int green;
    int blue;                 
    private int average; 
    
    Color() {
    }
    
    public int getAverage() {
        return (this.red + this.green + this.blue)/3;
    } 

    
}
