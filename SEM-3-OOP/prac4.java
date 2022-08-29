import java.util.Scanner;
public class prac4 {
    public static void main(String args[]) {
    Scanner sc = new Scanner(System.in);  

        String uname = "Ganpat", pass = "ICT", entname, entpass;
        System.out.println("\n Enter Username:  ");
        entname = sc.nextLine();
        
        System.out.println("\n Enter Password:  ");
        entpass = sc.nextLine();
        
        if(uname.equals(entname)  && pass.equals(entpass)){
            System.out.println("Welcome "+uname);
        }
        else{
            System.out.println("‘Failed to login!! Please try again");
        }
    }
}