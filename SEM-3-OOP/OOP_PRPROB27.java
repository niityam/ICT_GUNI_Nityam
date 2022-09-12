import java.util.*;

class Codechef
{
    Codechef(String inp){
        System.out.print(inp+" to Constructors");
    }
    Codechef(String speed, String color){
        System.out.format(" Speed is "+speed+" Color is "+color);
    }
	public static void main (String[] args) throws java.lang.Exception
	{
	    Scanner sc = new Scanner(System.in);
	    String n = sc.nextLine();
	    sc.close();
	    Codechef c = new Codechef(n);
		Codechef c1 = new Codechef("13", "Red");
		Codechef c2 = new Codechef("13", "Black");
		Codechef c3 = new Codechef("2.11", "Brown");
	}
}
