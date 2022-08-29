import java.util.Scanner;
public class prac5 {
    public static void main(String args[]) {
    Scanner sc = new Scanner(System.in);  

      String name;
      int age;
      double salary;
      System.out.println("\n Enter Name:  ");
        name = sc.nextLine();
        
      System.out.println("\n Enter Age:  ");
        age = sc.nextInt();
        
      System.out.println("\n Enter Salary:  ");
        salary = sc.nextDouble();
        
        System.out.println("\n Employee Name: "+name);
        System.out.println("\n Employee Age: "+age);
        System.out.println("\n Employee Salary: "+salary);
    }
}