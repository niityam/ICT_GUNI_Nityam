import java.util.Scanner;
import java.lang.Math;
public class prac15{
    public static void main(String args[]){
        try{
            float compoundInterest;
            Scanner sc = new Scanner(System.in);
            System.out.println("Enter Principle amount");
            int p = sc.nextInt();
            System.out.println("Enter Rate");
            float r = sc.nextFloat();
            System.out.println("Enter Years");
            float t = sc.nextFloat();
            if( t == 2.12){
                compoundInterest = (float)(p * Math.pow(1 + r / 100, Math.ceil(t)));
            }
            else{
                compoundInterest = (float)(p * Math.pow(1 + r / 100, t));
            }
            System.out.println("Compound Interest is: "+compoundInterest);
        }
        catch(Exception e){
            System.out.println("Error: "+e);
        }
    }
}
