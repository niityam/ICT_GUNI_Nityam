//Linked list implementation 
import java.util.*;
class Node
{
    int data;
    Node next;
    Node(int d)
    {
        data=d;
        next=null;
    }
}
class LinkedList
{
    Node head;
    public void insert(int d)
    {
        Node n=new Node(d);
        if(head==null)
        {
            head=n;
        }
        else
        {
            Node temp=head;
            while(temp.next!=null)
            {
                temp=temp.next;
            }
            temp.next=n;
        }
    }
    public void display()
    {
        Node temp=head;
        while(temp!=null)
        {
            System.out.print(temp.data+"\n");
            temp=temp.next;
        }
    }
    public void insertMiddle(int d, int value, int pos)
	{
        Node temp=head;
        Node prev=null;
        while(temp!=null)
        {   
            pos++;
            if(temp.data==value)
            {
                break;
            }
            prev=temp;
            temp=temp.next;
        }


		Node newNode = new Node(d);
		Node temp1 = head;
		
		if(pos == 0)
		{
			newNode.next = head;
			head = newNode;
			return;
		}
		
		for(int i=0; i<pos-1 && temp1!=null; i++)
		{
			temp1 = temp1.next;
		}
		
		newNode.next = temp1.next;
		temp1.next = newNode;
	}
}
class Main
{
    public static void main(String[] args)
    {
        Scanner sc=new Scanner(System.in);
        LinkedList l=new LinkedList();
        int input, postion;
        input=sc.nextInt();
        l.insert(input);

        input=sc.nextInt();
        l.insert(input);

        input=sc.nextInt();
        l.insert(input);

        input=sc.nextInt();
        postion = sc.nextInt();
        l.insertMiddle(input, postion, -1);

        input=sc.nextInt();
        l.insert(input);

        input=sc.nextInt();
        l.insert(input);

        input=sc.nextInt();
        postion = sc.nextInt();
        l.insertMiddle(input, postion,0);

        l.display();

    }
} 
