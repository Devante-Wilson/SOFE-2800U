/**
 * Syntax Game Development
 * Cody, Jason, Devante, Peter G.
 * 
 * STP Paddle Class
 * 
 * Manages the paddle movement
 */

class Paddle extends Block 
{
    public boolean moved = false;

    public Paddle() 
    {
        super(BreakerProject.WIDTH/2-BreakerProject.PADDLEWIDTH/2, 
            BreakerProject.PADDLEALTITUDE, 
            BreakerProject.PADDLECOLOR);
        width = BreakerProject.PADDLEWIDTH;
        height = BreakerProject.PADDLEHEIGHT;
    }

    // place block on (x0, y0)
    public void go(int x0, int y0) {
        x=x0;
        y=y0;
    }

    // make the paddle change places on the x axis */
    public void move(int change) 
    {
        if ((x+width < BreakerProject.WIDTH || change < 0) && (x > 0 || change > 0)) 
        { 
            x = x + change;
            moved = true;
        }
        else
            moved = false;
    }
}