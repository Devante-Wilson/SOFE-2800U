
/**
 * Author: Devante Wilson
 * Created: 2014 Feb 13
 */
 
import java.io.*;
import java.util.*;

public class FullName
{
  public static void main (String args [])
  {
      Scanner kbReader = new Scanner (System.in);
      String s1;
      String s2;
      
      System.out.print("Please enter your first name. ");
      s1= kbReader.next();
      System.out.print("Please enter your second name. ");
      s2= kbReader.next();
      System.out.println (s1 + " " + s2);
    }
}