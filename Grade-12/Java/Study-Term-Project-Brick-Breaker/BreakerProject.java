/**
 * Syntax Game Development
 * Cody, Jason, Devante, Peter G.
 * 
 * STP main program class
 * 
 * Initializes variables and puts everything together.
 */

import java.awt.*;
import java.applet.*;
import java.lang.Math;
import java.io.*;
import java.util.*;

/* supress compiler warnings 
(window used to appear when attempting to run applet) */
@SuppressWarnings("deprecation")

public class BreakerProject extends Applet implements Runnable
{
    public static final int HEIGHT=640, WIDTH=640, SLEEPTIME = 5,
    BALLRADIUS=5, BLOCKWIDTH = 40, BLOCKHEIGHT = 10, 
    PADDLEWIDTH = 80, PADDLEHEIGHT=10, PADDLEALTITUDE=HEIGHT-20,
    PADDLESPEED=5, BLOCKSPACING_Y=2, BLOCKSPACING_X=2,
    MAXBALLS=3;

    public static final double INITSPEED_X=2.2, INITSPEED_Y=-2.2,
    XHIT_CHANGE=0.4, YHIT_CHANGE=0.2;

    public static final Color PADDLECOLOR=Color.white, 
    BALLCOLOR=Color.green;

    public static final Color BACKGROUND = Color.black;
    public static final String BEEP_SOUND = "check.wav";
    
    public static AudioClip beep;
    public int score;
    public boolean paused=false;
    public int numberlost=0;
    public Graphics gContext;
    public Image buffer;
    public Thread animate;
    public boolean leftArrow = false, rightArrow = false, ballready = true;
    public Ball ball;
    public BlockHolder blocks;
    public AudioClip hitsound;
    public Paddle paddle;
    // array necessary for calling main method of other classes
    //String [] arguments = new String [] {"args"};

    // prepare the game to be played and draw the blocks, paddle, and box 
    public void init() 
    {
        setSize(640,640);
        hitsound = getAudioClip(getDocumentBase(), BEEP_SOUND);
        hitsound.play();
        buffer = createImage(WIDTH, HEIGHT);
        gContext = buffer.getGraphics();
        gContext.setColor(BACKGROUND);
        blocks = new BlockHolder();
        paddle = new Paddle();
        ball = new Ball(blocks, hitsound);
        gContext.fillRect(0, 0, WIDTH, HEIGHT);
        paddle.draw(gContext);
        ball.draw(gContext);
        blocks.draw(gContext);
    }

    // necessary method for starting the game (unique to applets)
    public void start()
    {
        if(animate == null) 
        {

            animate = new Thread(this);
            animate.start();
        }
    }

    // necessary method unique to applets
    public void restart() 
    { 
    }

    // necessary method unique to applets
    public void stop() 
    {
        if (animate != null) 
        {
            animate.stop();
            animate = null;
        }
    }

    // paint the graphics onto the screen
    public void paint(Graphics g) 
    {
        try 
        {
            g.drawImage(buffer, 0, 0, this);
        }
        catch(Exception e) 
        {
        }
    }

    /* clear the paddle and ball.
     * Check to see if any blocks have been hit, then redraw
     * the screen. Ball is drawn as a point, but is actually a 
     * few pixels in radius. Blocks will sometimes be partially cleared, 
     * but not broken. */
    public void run() 
    {
        showStatus("Click on Field to Play");
        try 
        {
        } 
        catch(Exception e) 
        {
        };

        while (true) 
        {
            paddle.clear(gContext);
            ball.clear(gContext);

            if (leftArrow) 
            {
                paddle.move(-PADDLESPEED);

                if (ballready && paddle.moved)
                    ball.move(-PADDLESPEED,0,gContext);
            }

            if (rightArrow)
            {
                paddle.move(PADDLESPEED);

                if (ballready && paddle.moved)
                    ball.move(PADDLESPEED,0,gContext);
            }

            if (!ballready) 
            {
                /*
                try
                {
                 */
                ball.selfMove(gContext,paddle,this);
                /*
                }
                catch (IOException e)
                {
                }
                 */
            }

            if (blocks.blocksLeft()==0)
                win();

            paddle.draw(gContext);
            ball.draw(gContext);

            try 
            {
                Thread.sleep(SLEEPTIME);
            }
            catch (InterruptedException e) 
            {
            }

            repaint();
        }
    }

    public void update(Graphics g) 
    {
        paint(g);
    }

    /* check to see which key was pressed.
     * Up arrow = #1004 - starts game if ball is on paddle
     * Left arrow = #1006 - moves paddle left
     * Right arrow = #1007 - moves paddle right
     * P button = #104 - pauses game */
    public boolean keyDown(Event e, int key) 
    {
        if (key==1004 && ballready) 
        {
            showStatus("Press P to pause the game." + " || Lives: " + (MAXBALLS - numberlost));

            ballready = false;
            ball.xchange = INITSPEED_X;
            ball.ychange = INITSPEED_Y;
        }
        
        if (key==112) 
        {
            if(!paused) 
            {
                paused=true;
                animate.suspend();
                showStatus("Press P to unpause");
            }
            else 
            {
                showStatus("Press P to pause");
                paused=false;
                animate.resume();
            }   
        }
        
        if (key==1006)
            leftArrow = true;
            
        if (key==1007)
            rightArrow = true;
        return true;
    }

    // stop moving the paddle, if one of the arrows was down
    public boolean keyUp(Event e, int key) 
    {
        if(key==1006)
            leftArrow = false;
            
        if(key==1007)
            rightArrow = false;
        return true;
    }

    // called when you win the first and only level of the program
    public void win() 
    {
        showStatus("You have won the game! Your score is " + (Ball.score + 10000) + " points");
        gContext.setColor(BACKGROUND);
        gContext.fillRect(0,0,WIDTH,HEIGHT);
        repaint();
        animate.stop();
    }

    /* This method is called when you lose, and the game must be
    reinitialized */
    public void lose()
    {
        if(numberlost < MAXBALLS) 
        {
            numberlost++;
            showStatus("Try Again");
            gContext.setColor(BACKGROUND);
            paddle.clear(gContext);
            ball.clear(gContext);
            paddle.go(WIDTH/2-20, PADDLEALTITUDE);
            ball.go(WIDTH/2-BALLRADIUS, PADDLEALTITUDE-5);
            ballready=true;
        }
        else
        {
            numberlost=0;
            showStatus("You have lost the game, your score is " + Ball.score + " points");
            /*
            try
            {
            TextFile.main(arguments);
            }
            catch (IOException e)
            {
            }
             */

            gContext.setColor(BACKGROUND);
            gContext.fillRect(0,0,WIDTH, HEIGHT);
            paddle.go(WIDTH/2-20, PADDLEALTITUDE);
            ball.go(WIDTH/2-BALLRADIUS, PADDLEALTITUDE-5);
            blocks.restart();
            blocks.draw(gContext);
            ballready = true;
        }
    }

    public boolean getLeftArrow() 
    {
        return leftArrow;
    }

    public boolean getRightArrow() 
    {
        return rightArrow;
    }
}
