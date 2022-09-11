/* package codechef; // don't place package name! */

import java.util.*;
import java.lang.*;
import java.io.*;


class codechef
{
    static void input(int i){
        System.out.print(" Integer data is "+i);
    }
    static void input(double d){
        System.out.print(" Double data is "+d);
    }
    static void input(String s){
        System.out.print(" String data is "+s);
    }
	public static void main (String[] args) throws java.lang.Exception
	{
	    Scanner sc = new Scanner(System.in);
	    String n = sc.nextLine();
	    sc.close();
	    System.out.print(n);
		codechef.input(23);
		codechef.input(23.3456);
		codechef.input("Ganpat"); 
	}
}
