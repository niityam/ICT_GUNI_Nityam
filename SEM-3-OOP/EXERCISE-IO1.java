import java.util.*;
public class Main
{
	public static void main(String[] args) {
	    Scanner sc = new Scanner(System.in);
	    int x,y;
	    String n1, n2;
	    n1 = sc.next();
	    x = sc.nextInt();
	    n2 = sc.next();
	    y = sc.nextInt();
	    if(x>y){
	        System.out.println(n1+" Has Scored Higher!");
	    }
	    else if(x<y){
	        System.out.println(n2+" Has Scored Higher!");
	    }
	    else{
	        System.out.println("Both Have Scored Same Marks!");
	    }
	}
}
