
/**
 * Author: Devante Wilson
 * Created: 2014 Feb 13
 */

import java.io.*;
import java.util.*;
public class RadiusOfCircle
{
public static void main (String args[])
{
Scanner kbReader = new Scanner(System.in);
double area;

System.out.print("What is the area? ");
area = kbReader.nextDouble();
double radius = Math.sqrt(area/Math.PI);
System.out.println("The radius of your circle is " + radius + ".");
}
}