/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OOPtry;

import java.awt.Dimension;
import java.awt.image.BufferedImage;

/**
 *
 * @author cubey
 */
public class DimensionChange {
    DimensionChange() {
        
    }
    
        public Dimension getPreferredSize(BufferedImage image) {
            if (image == null) {
            return new Dimension(10,10);
        } else {
            return new Dimension(image.getWidth(), image.getHeight());
        }
    }
}