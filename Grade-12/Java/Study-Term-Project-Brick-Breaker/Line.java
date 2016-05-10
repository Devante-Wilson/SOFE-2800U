/**
 * Syntax Game Development
 * Cody, Jason, Devante, Peter G. 
 *
 * STP Line of blocks class
 * 
 * Represents a line of blocks on the screen;
 * used a lot by BlockHolder class
 */

import java.awt.*;

public class Line 
{
    public int bottom, top, numberblocks, initial;
    public Block[] blocks;
    public boolean[] exists;
    public int blockwidth;
    public Color color = Color.blue;

    /* prepare a line of blocks, starting at hight top0, and
    with the color color0 */
    public Line(int top0, Color color0) 
    {
        top = top0;
        color=color0;
        blockwidth=BreakerProject.BLOCKWIDTH;
        bottom = top+BreakerProject.BLOCKHEIGHT;
        numberblocks = (int) BreakerProject.WIDTH/blockwidth;
        initial = (int) (BreakerProject.WIDTH - blockwidth*numberblocks)/2;
        blocks = new Block[numberblocks];
        exists = new boolean[numberblocks];
    }

    // fill the line with its respective blocks
    public void fill() 
    {
        for (int i = 0; i < numberblocks; i++) 
        {
            blocks[i] = new Block(blockwidth*i+initial, top+1, color);
            exists[i] = true;
        }
    }

    public void restart() 
    {
        for (int i = 0; i < numberblocks; i++)
        {
            exists[i] = true;
        }
    }

    // draw the line onto the graphics
    public void draw (Graphics g) 
    {
        for (int i = 0; i < numberblocks; i++) 
        {
            if (exists[i])
                blocks[i].draw(g);
        }
    }

    /* used by the BlockHolder class to determine which block is 
    hit. whohit returns which block is within location x */
    public Block whohit(int x) 
    {
        int numhit = (int) (x-initial)/blockwidth;

        if (numhit > numberblocks) 
            numhit = numberblocks;

        if(exists[numhit]) 
        {
            exists[numhit] = false;
            return blocks[numhit];
        }
        return null;
    }
}
