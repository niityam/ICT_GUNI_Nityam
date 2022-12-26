public class Practical_19th
{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String name1, name2, name3;
        System.out.print("Enter First Name: ");
        name1 = scanner.next();
        System.out.print("Enter Second Name: ");
        name2 = scanner.next();
        System.out.print("Enter Third Name: ");
        name3 = scanner.next();
        int id1, id2, id3;
        id1 = 101;
        id2 = 102;
        id3 = 103;
        Thread mythread1 = new Thread(name1);
        Thread mythread2 = new Thread(name2);
        Thread mythread3 = new Thread(name3);
        mythread1.start();
        mythread2.start();
        mythread3.start();
        try
        {
            Thread.sleep(600);
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
        System.out.println("ID --> " + id1 + " \nName --> " + mythread1.getName());
        System.out.println();
        try
        {
            Thread.sleep(600);
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
        System.out.println("ID --> " + id2 + " \nName --> " + mythread2.getName());
        System.out.println();
        try
        {
            Thread.sleep(600);
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
        System.out.println("ID --> " + id3 + " \nName --> " + mythread3.getName());
    }
}
