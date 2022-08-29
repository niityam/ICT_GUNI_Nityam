public class prac7{
    public static void main(String args[]){
        major ma = new major();
        minor mi = new minor();
        ma.name = "Stephen Bold";
        ma.address = "New York";
        ma.balance = 320.66;
        
        ma.displayData();
        ma.displayMajorBal();
        
        mi.name = "Mukesh Shah";
        mi.address = "Gujarat";
        mi.balance = 4600000.96;
        
        mi.displayData();
        mi.displayMinorBal();

        ma.displayData();
    }

}
class major{
    String name, address;
    Double balance;
    Double minorBal(){
        return balance;
    }
    void displayData(){
        System.out.println("Name: "+name);
        System.out.println("Address: "+address);        
    }
    void displayMajorBal(){
        System.out.println("Balance is:"+balance);
    }
}
class minor extends major{
    void displayMinorBal(){
        System.out.println("Balance remaining is:"+minorBal());
    }
}