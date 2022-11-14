// Note: This program is not user defined
public class prac13{
    public static void main(String args[]){
        RestMgmt rm = new RestMgmt();
        rm.getMenu();
        rm.getInvoice();
    }
}
interface RestDetails{
    String restaurantName = "Foodie's Restaurant";
    void getMenu();
}
abstract class Order implements RestDetails{
    int foodNumber;
    Order(int foodNumber){
        this.foodNumber = foodNumber;
    }
    abstract void getInvoice();
}
class RestMgmt extends Order{
    public void getMenu(){
        int a[] = {1, 2, 3};
        System.out.println("Welcome to "+restaurantName);
        System.out.println("Food choices available:");
        System.out.println("1. Sweet 2500 INR");
        System.out.println("2. Spicy 1900 INR");
        System.out.println("3. Sour 1500 INR");
    }
    RestMgmt(){
        super(1);
    }
    public void getInvoice(){
        if(foodNumber == 1){
            System.out.println("Your food choice is Sweet");
            System.out.println("Your food Number is: "+foodNumber);
            System.out.println("Your total bill is: "+2500);
            if(2500 > 2000){
                System.out.println("Your discounted bill is: "+(2500)*0.8);
            }
        }
        else if(foodNumber == 2){
            System.out.println("Your food choice is Spicy");
            System.out.println("Your food Number is: "+foodNumber);
            System.out.println("Your total bill is: "+1900);
        }
        else if(foodNumber == 3){
            System.out.println("Your food choice is Sour");
            System.out.println("Your food Number is: "+foodNumber);
            System.out.println("Your total bill is: "+1500);
        }
    }
}
