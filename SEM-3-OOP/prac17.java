// Warning: Program might be incorrect
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Objects;
import java.util.Scanner;

public class Practical_17 {
    public static void main(String[] args) {
        String name;
        name = null;
        File infile = new File("Practical_17th/number.txt");

        if (infile.exists()) {
            System.out.println("this file exist");
            try {
                FileReader index = new FileReader("Practical_17th/number.txt");
                BufferedReader reader = new BufferedReader(index);
                if((name = reader.readLine()) != null)
                {
                    System.out.println(name);
                }
                method(name);
            } catch (Exception e) {
                System.out.println(e);
            }
        } else {
            System.out.println("This file dose not exist");
        }
    }
    static void method(String name)
    {
        String[] greet = name.split("\\s+");
        for(int i=0; i<greet.length; i++)
        {
            if(greet[i].equals("text"))
            {
                System.out.println("You can't use the wor 'text'");
                break;
            }
        }
    }
}
