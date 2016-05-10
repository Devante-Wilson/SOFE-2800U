
/**
 * Author: Devante Wilson
 * Created: 2014 Feb 17
 * 
 * Program prompts the user to enter their name
 * then outputs the exact reverse of the entered text
 */

// java input/ouput utilities are imported needed for the use of keyboard input
import java.io.*; 
import java.util.*; 

public class Reverse3
{ 
    public static void main(String args[])
    { 
        // new scanner for keyboard input is declared and initialized
        Scanner kbReader = new Scanner(System.in);
        System.out.print("Please enter your name. "); 
        // string is declared and initialized as the entire string entered by user (including spaces)
        String userStr = kbReader.nextLine(); 
        // integer is declared and initalized as the amount of characters in user entered string
        int strLen = userStr.length();
        // string is declared and initialized as a null string
        String strRev = ""; 
        /*
         * conditional loop
         * step expression states that the loop decrements by 1 on the condition that the amount of characters >=0
         * substring is used to keep track of character index
         */
        for(int j = strLen - 1; j >= 0; j--) 
        { 
            // the index starts at the last character and proceeds to the next
            // (remembering that substring pulls back one index in the second part of the parameter (j+1))
            String reverse1 = userStr.substring(j, j + 1); 
            // null string (initially) gets w appended on to itself
            strRev = strRev + reverse1; 
        } 
        System.out.println(strRev);
    }
}