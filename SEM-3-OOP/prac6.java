import java.util.Scanner;

public class prac6 {
    static int acc_balance = 1000;
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);

        int c_id;
        String c_name, bank_name="HDCF";
        
        System.out.print("Enter your name: ");
        c_name = sc.nextLine();

        System.out.print("Enter your customer id: ");
        c_id = sc.nextInt();
        
        System.out.println("Your details are as follow:");
        System.out.println("Customer Id: " +c_id);
        System.out.println("Customer Name: " +c_name);
        System.out.println("Account Balance: " +acc_balance);
        System.out.println("Bank Name: " +bank_name);

}
}
