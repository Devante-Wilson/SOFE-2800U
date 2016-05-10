
/**
 * Syntax Game Development
 * Cody, Jason, Devante, Peter G.
 * 
 * STP Block class
 * 
 * Manages the drawing of the blocks and erasing them
 * when they are hit
 */

import java.awt.*;

public class Block 
{
    public int x, y;
    protected Color color;
    protected int width, height;

    // create block starting at postition (x0, y0) of color color0
    public Block(int x0, int y0, Color color0) 
    {
        x = x0;
        y = y0;
        color = color0;
        width = BreakerProject.BLOCKWIDTH-BreakerProject.BLOCKSPACING_X/2;
        height = BreakerProject.BLOCKHEIGHT-BreakerProject.BLOCKSPACING_Y/2;
    }

    // erase the block, by making it the color of the background
    public void clear(Graphics g) 
    {
        g.setColor(BreakerProject.BACKGROUND);
        g.fillRect(x,y,width,height);
    }

    // draw the block
    public void draw(Graphics g) 
    {
        g.setColor(color);
        g.fillRect(x,y, width, height);
    }

    // top position of the paddle
    public int getTop() 
    {
        return y;
    }

    // bottom position of paddle
    public int getBottom() 
    {
        return y+height;
    }

    // left position of paddle
    public int getleftx() 
    {
        return x;
    }
    
    // right position of paddle
    public int getrightx() 
    {
        return x + width;
    }
}