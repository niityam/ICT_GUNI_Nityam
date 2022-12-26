// Warning: Program might be incorrect
import java.io.*;
public class Practical16 {
    public static void main(String[] args) {
        try{
            File f = new File("FILE1.txt");
            String[] arr = {"Yash","Nityam","Ayush","Jhanvi","Riya"};
            if(f.exists())
            {
                System.out.println("File already Created");
                FileWriter fw = new FileWriter("FILE1.txt");
                    for(int i=0 ; i<arr.length-1;i++) {
                        fw.write(arr[i]+" ");
                    }
                        fw.close();

            }
            else{
                f.createNewFile();
                System.out.println("File Created--"+f.getName());
            }
        }
        catch (IOException e)
        {
            System.out.println("Error");
        }
    }
}
