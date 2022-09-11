import java.util.*;

public class Reverse {
    String str;
    Reverse(String s){
        this.str = s;
    }
    void reverse(){
        int tempj=0;     
        for(int i=0; i<str.length(); i++){
            if(str.charAt(i) == ' ' || i == str.length()-1){
                for(int j=i; j>=tempj; j--){
                    System.out.print(str.charAt(j));
                }
                tempj = i+1;
            }
        }
        
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String input = sc.nextLine();
        sc.close();
        Reverse r = new Reverse(input);
        r.reverse();
    }
}
