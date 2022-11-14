abstract class Book
{
    String title;
    abstract void setTitle(String s);
    String getTitle()
    {
        return title;
    }
}

interface TitleBook
{
    void setTitle(String s);
}

class MyBook extends Book implements TitleBook
{
    public void setTitle(String s)
    {
        title = s;
    }
}

public class prac12
{
    public static void main(String args[])
    {
        String title = "bhagwat geeta";
        Book newNovel = new MyBook();
        newNovel.setTitle(title);
        System.out.println("Title Present is: " + newNovel.getTitle());
    }
}
