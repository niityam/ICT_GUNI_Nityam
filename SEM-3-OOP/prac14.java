import java.util.*;
public class prac14{
    public static void main(String args[]){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Your Name");
            int age;
            String name;
            name = sc.nextLine();
            System.out.println("Enter Your age");
            age = sc.nextInt();
            try{
                if (age > 18) {
                    System.out.println("Access granted to " + name);
                }
                else{
                    throw new ArithmeticException("Access denied to " + name);
                }
            }
            catch(Exception e){
                System.out.println(e);
            }            
    }
}
