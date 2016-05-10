/**
 * Syntax Game Development
 * Cody, Jason, Devante, Peter G.
 * 
 * STP BlockHolder class
 * 
 * represents the group of blocks in a rectangular arrangement; 
 * can be rewritten in different arrangements for other levels
 */

import java.awt.*;

public class BlockHolder 
{
    public int blockCount;
    public Line[] lines;
    public int BLOCKHEIGHT;

    public BlockHolder() 
    {
        BLOCKHEIGHT=BreakerProject.BLOCKHEIGHT;
        lines = new Line[10];
        prepareBlocks();
    }

    // called when the game is lost, and the blocks are redrawn
    public void restart() 
    {
        blockCount=0;
        for(int i = 0; i<lines.length; i++) 
        {
            lines[i].restart();
            blockCount += lines[i].numberblocks;
        }
    }

    /* prepareBlocks() is called by the BlockHolder constructor, and 
    prepares all the lines of blocks to be drawn, by initializing
    each line with the proper hight and colors of blocks. */
    public void prepareBlocks() 
    {
        int spacing = BreakerProject.BLOCKSPACING_Y;
        lines[0] = new Line(0, Color.red);
        lines[1] = new Line(BLOCKHEIGHT*2+2*spacing, Color.orange);
        lines[2] = new Line(BLOCKHEIGHT*4+4*spacing, Color.yellow);
        lines[3] = new Line(BLOCKHEIGHT*6+6*spacing, Color.green);
        lines[4] = new Line(BLOCKHEIGHT*8+8*spacing, Color.cyan);
        lines[5] = new Line(BLOCKHEIGHT*10+10*spacing, Color.blue);
        lines[6] = new Line(BLOCKHEIGHT*12+12*spacing, Color.magenta);
        lines[7] = new Line(BLOCKHEIGHT*14+14*spacing, Color.gray);
        lines[8] = new Line(BLOCKHEIGHT*16+16*spacing, Color.gray.brighter());
        lines[9] = new Line(BLOCKHEIGHT*18+18*spacing, Color.white);

        for (int i = 0; i < lines.length; i++) 
        {
            blockCount += lines[i].numberblocks;
            lines[i].fill();
        }
    }

    // return the block which is hit when a ball passes at a point of (x,y)
    public Block whohit(int x, int y) 
    {
        for (int i = 0; i<lines.length; i++) 
        {
            if (lines[i].bottom >= y && lines[i].top <= y) 
            {
                Block hit=lines[i].whohit(x);

                if (hit!=null)
                    blockCount-=1;
                return hit;
            }
        }
        return null;
    }

    /* called by init method in BreakerProject class
    to draw the blocks into the graphics */
    public void draw(Graphics g)
    {
        for (int i = 0; i < lines.length; i++)
            lines[i].draw(g);
    }

    // return the number of blocks still unhit on the playing field
    public int blocksLeft() 
    {
        return blockCount;
    }
}