/* package codechef; // don't place package name! */
import java.lang.Math;
import java.util.*;
import java.lang.*;
import java.io.*;

class Squareroot{
    static double root(double a){
        return Math.sqrt(a);
    } 
}
class Euclidean  extends Squareroot{
    static double eucl(int x1, int y1, int x2, int y2){
        double ans;
        ans = Squareroot.root((y2 - y1) * (y2 - y1) + (x2 - x1) * (x2 - x1));
        return ans;
    }
}
class Point extends Euclidean {
    static double poi(int x, int y, int x2, int y2){
        return Euclidean.eucl(x,y,x2,y2);
    }
}

class Codechef
{
	public static void main (String[] args) throws java.lang.Exception
	{
		Scanner sc = new Scanner(System.in);
	    int x,y,x2,y2;
	    x = sc.nextInt();
	    y = sc.nextInt();
	    x2 = sc.nextInt();
	    y2 = sc.nextInt();
		Point p = new Point ();
		double result = p.poi(x,y,x2,y2);
		System.out.format("%.4f",result);
	}
}
