// Online Java Compiler
// Use this editor to write, compile and run your Java code online
import java.util.*;
import java.lang.*;
import java.io.*;

class box {
    
    int l, b, h;
    box(int l, int b, int h){
        this.l =l;
        this.h =h;
        this.b =b;
    }
    int volume(){
        return l*b*h;
    }
    void display(){
        System.out.print(l+" "+b+" "+h+" "+volume());
    }
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        box b = new box(sc.nextInt(),sc.nextInt(),sc.nextInt());
        b.volume();
        b.display();
		sc.close();
    }
}
