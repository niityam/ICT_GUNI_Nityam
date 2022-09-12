import java.io.*;
class parent{
    void methodparent(){
        System.out.println("This is parent class");
    }
}
class child extends parent{
    void methodchild(){
        System.out.println("This is child class");
    }
}
public class Inheritance1 {
    
    public static void main(String[] args){
        parent p = new parent();
        child c = new child();
        p.methodparent();
        c.methodchild();
        c.methodparent();
    }
}
