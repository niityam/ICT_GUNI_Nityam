import java.util.Scanner;
public class prac9 {
    public static void main (String args[]){
        System.out.println("Interest of SBI: 6.9%\n");
        System.out.println("Interest of HDFC: 7.1%\n");
        System.out.println("Interest of BOI: 6.5%\n");
        System.out.println("How much amount of loan you need: \n");
        Scanner sc = new Scanner(System.in);
        int loanAmt = sc.nextInt();
        sbi s = new sbi();
        hdfc h = new hdfc();
        boi b = new boi();
        System.out.println("Select bank from 1 to 3: \n");
        int opt = sc.nextInt();
        switch (opt){
            case 1:
            s.setdata(loanAmt);
            s.displayFinal();
            break;

            case 2:
            h.setdata(loanAmt);
            h.displayFinal();
            break;

            case 3:
            b.setdata(loanAmt);
            b.displayFinal();
            break;
        }
        sc.close();
    }
}
class alldetail{
    int years = 5;
    int loanAmt;
    void setdata(int loanAmt){
        this.loanAmt = loanAmt;
    }
}
class sbi extends alldetail{
    void displayFinal(){
        System.out.println("In SBI:"+(((6.9*loanAmt*years)/100)+loanAmt));
    }
}
class hdfc extends alldetail{
    void displayFinal(){
        System.out.println("In HDFC:"+(((7.1*loanAmt*years)/100)+loanAmt));
    }
}
class boi extends alldetail{
    void displayFinal(){
        System.out.println("In BOI:"+(((6.5*loanAmt*years)/100)+loanAmt));
    }
}
