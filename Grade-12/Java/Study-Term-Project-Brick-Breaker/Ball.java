/**
 * Syntax Game Development
 * Cody, Jason, Devante, Peter G.
 * 
 * STP Ball class
 * 
 * Manages the movement and everything else to do with the ball;
 * made into applet in order to use AudioClip class
 */

import java.awt.*;
import java.lang.Math;
import java.io.*;
import java.util.*;
import java.applet.*;

public class Ball extends Applet
{
    public double xchange, ychange;
    public double x, y;
    public int radius;
    public Color color;
    public BlockHolder blocks;
    public static int score;

    /* create a ball in a design with a blocks0 BlockHolder and a
    beeping noise of beep0. */
    public Ball (BlockHolder blocks0, AudioClip beep0) 
    {
        xchange = 0;
        ychange = 0;
        radius = BreakerProject.BALLRADIUS;
        x = BreakerProject.WIDTH/2-radius;
        y = BreakerProject.PADDLEALTITUDE-5;
        color = BreakerProject.BALLCOLOR;
        blocks = blocks0;
        BreakerProject.beep = beep0;
    }

    public void go(int x0, int y0) 
    {
        x= (double) x0;
        y= (double) y0;
        xchange=0.0;
        ychange=0.0;
    }

    /* ball moves itself across the screen based on the position
    of the blocks and paddle */
    public void selfMove(Graphics g, Block paddle, BreakerProject ap) 
    {
        if(x+xchange>=BreakerProject.WIDTH)
            xchange=-Math.abs(xchange);

        if(x+xchange<=0)
            xchange=Math.abs(xchange);

        if(y+ychange<=0)
            ychange=-ychange;

        if(paddle.getTop() <= y+ychange && paddle.getTop() >= y-ychange &&
        x+xchange >= paddle.getleftx() && x+xchange <= paddle.getrightx()) 
        {
            ychange=-Math.abs(ychange);

            if(ap.getLeftArrow()) 
            {
                xchange -= BreakerProject.XHIT_CHANGE;
                ychange -= BreakerProject.YHIT_CHANGE;
            }

            if(ap.getRightArrow()) 
            {
                xchange += BreakerProject.XHIT_CHANGE;
                ychange -= BreakerProject.YHIT_CHANGE;
            }
        }

        if(y+ychange>=BreakerProject.WIDTH) 
        {
            /*
            try
            {
             */
            ap.lose();
            /*
            }
            catch (IOException e)
            {
            }
             */

        }
        checkBlocks(g);

        move(xchange, ychange, g);
    }

    // move the ball xchange in the x direction and ychange in the y direction
    public void move(double xchange, double ychange, Graphics g) 
    {
        x=x+xchange;
        y=y+ychange;
    }

    /* Check to see if the ball is about to hit a block, if so,
    reverse the ychange variable and make the beep noise */
    public void checkBlocks(Graphics g) 
    {
        Block hit = blocks.whohit((int) (x+xchange), (int) (y+ychange));

        if(hit != null) 
        {
            hit.clear(g);
            BreakerProject.beep.play();
            score += 10;
            ychange = -ychange;
        }
    }

    // erase the ball
    public void clear(Graphics g) 
    {
        g.setColor(BreakerProject.BACKGROUND);
        g.fillOval((int) x, (int) y,radius*2,radius*2);
    }

    // draw the ball at its current position
    public void draw(Graphics g) 
    {
        g.setColor(color);
        g.fillOval((int) x,(int) y, radius*2, radius*2);
    }
}