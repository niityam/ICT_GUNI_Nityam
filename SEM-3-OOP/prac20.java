import java.util.*;
public class HelloWorld {
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        Queue<String> q = new LinkedList<String>();
        for (int i = 0; i < 5; i++) {
            q.add(sc.nextLine());
        }
        System.out.println(q);
        q.remove();
        q.remove();
        q.add("Semester 6: Pascal");
        System.out.println(q);
    }
}
