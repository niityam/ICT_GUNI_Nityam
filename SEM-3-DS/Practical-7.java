/* package codechef; // don't place package name! */

import java.util.*;
import java.lang.*;
import java.io.*;

class codechef
{
    static void towerOfHanoi(int n, char from, char to, char aux)
    {
        if (n == 1)
        {
            System.out.println("Top Disk moved from " +  from + " to " + to);
            return;
        }
        towerOfHanoi(n-1, from, aux, to);
        System.out.println("Top Disk moved from " +  from + " to " + to);
        towerOfHanoi(n-1, aux, to, from);
    }
    
	public static void main (String[] args) throws java.lang.Exception
	{
		// your code goes here
		Scanner sc = new Scanner(System.in);
		int n;
		n = sc.nextInt();
		sc.close();
        towerOfHanoi(n, 'A', 'B', 'C');
	}
}
