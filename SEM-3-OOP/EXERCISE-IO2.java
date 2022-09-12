import java.util.*;
public class EXERCISEIO2
{
	public static void main(String[] args) {
	    Scanner sc = new Scanner(System.in);
	    int x, total=0;
	    x = sc.nextInt();
	    int[] num = new int[x]; 
	    
	    for(int i=0; i<x; i++){
	        num[i] = sc.nextInt();
	        total += num[i];
	    }
	    System.out.print("Total is: "+total);
	}
}
