
/**
 * Author: Devante Wilson
 * Created: 2014 Feb 13
 */
 import java.io.*;
 import java.util.*;
public class EvenOrOdd
{
   public static void main (String args[])
   {
       Scanner kbReader = new Scanner(System.in);
       int num;
       
       System.out.print("Enter an integer: ");
       num = kbReader.nextInt();
       
       if (num%2==0)
      {
          System.out.println("The integer " + num + " is even.");
        }
          else
          {
          System.out.println("The integer " + num + " is odd.");
        }
        }
    }
