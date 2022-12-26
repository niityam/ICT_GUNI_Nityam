// Warning: Program might be incorrect
package Practical_18th;
import java.awt.*;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.lang.reflect.Field;
import java.util.Arrays;
public class Practical_18th {
    public static void main(String[] args) {
        String name;
        File main = new File("Practical_18th/number.txt");
        File even = new File("Practical_18th/even.txt");
        File odd = new File("Practical_18th/odd.txt");
        try
 
        {
            FileReader reader = new
FileReader("Practical_18th/number.txt");
            BufferedReader index = new BufferedReader(reader);
            if((name = index.readLine()) != null)
            {
                System.out.println(name);
            }
            //main.close();
            method(name);
        }catch (Exception e)
        {
            System.out.println(e);
 } }
    static void method(String number)
    {
        int[] array = new int[number.length()];
        for(int i=0; i<number.length(); i++)
        {
            array[i] =
Integer.parseInt(String.valueOf(number.charAt(i)));
        }
        int[] even_array = new int[4];
        int[] odd_array = new int[5];
        int k=0;
        int o=0;
        for(int i=0; i<array.length; i++)
        {
            if(array[i]%2 == 0)
            {
                even_array[k] = array[i];
k++; }
else
            {
                odd_array[o] = array[i];
                o++;
            }
             }
            try
                    {
                        Desktop dex = Desktop.getDesktop();
                        File e = new File("Practical_18th/even.txt");
                        FileWriter for_even = new
            FileWriter("Practical_18th/even.txt");
                        for_even.write(Arrays.toString(even_array));
                        dex.open(e);
                        for_even.close();
                        //            for_even.write("Hello");
             
                        File ob = new File("Practical_18th/odd.txt");
                        FileWriter for_odd = new
            FileWriter("Practical_18th/odd.txt");
                        for_odd.write(Arrays.toString(odd_array));
                        dex.open(ob);
                        for_odd.close();
                    }
                    catch (Exception e)
                    {
                        System.out.println(e);
                    }
             System.out.println("All Even Number");
            for(int i=0; i<4; i++)
            {
                System.out.print(even_array[i] + " ");
            }
            System.out.println();
            System.out.println("All Odd Number");
            for(int i=0; i<5; i++)
            {
                System.out.print(odd_array[i] + " ");
            }
             }
         }
