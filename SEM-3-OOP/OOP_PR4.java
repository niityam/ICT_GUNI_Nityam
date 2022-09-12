/* package codechef; // don't place package name! */

import java.util.*;
import java.lang.*;
import java.io.*;
import java.util.Arrays;

/* Name of the class has to be "Main" only if the class is public. */
class Codechef
{
    String marks[][] = new String[10][6];
    int students;
    int totalmarks[] = {0,0,0,0,0,0,0,0,0,0};
    Codechef(String[][] marks, int students){
        this.marks = marks;
        this.students = students;
    }
    void calculate(){
        int total = 0;        
        for(int i=0; i<students; i++){
            for(int j=1; j<5; j++){
                total += Integer.parseInt(marks[i][j]);
            }
            totalmarks[i] = total;
            marks[i][5] = Integer.toString(total);
            total = 0;
        }
    }
    void display(){
        Arrays.sort(totalmarks);
        reverse(totalmarks);
        for(int i=0; i<students; i++){   
            for(int j=0; j<students; j++){    
                if(Integer.parseInt(marks[j][5]) == totalmarks[i]){
                    for(int k=0; k<5; k++){
                        System.out.print(marks[j][k]+" ");
                    }
                }
            }            
        }        
    }
    public static void reverse(int[] array)
    {
        int n = array.length;
        for (int i = 0; i < n / 2; i++) {
            int temp = array[i];
            array[i] = array[n - i - 1];
            array[n - i - 1] = temp;
        }
    }
    
	public static void main (String[] args) throws java.lang.Exception
	{
		Scanner sc = new Scanner(System.in);
        String marks[][] = new String[10][6];
        int students = sc.nextInt();
        for(int i=0; i<students; i++){
            for(int j=0; j<5; j++){
                marks[i][j] = sc.next();
            }
        }
        Codechef t = new Codechef(marks, students);
        t.calculate();
        t.display();
        sc.close();
	}
}
