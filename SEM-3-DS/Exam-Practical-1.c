#include <stdio.h>
int stack[100],choice,n=5,top,x,i;
void push(void);
void pop(void);
void display(void);
void topEle(void);
int main()
{
top=-1;
printf("1.Puch 2.Pop 3.Display 4.Top Element 5.Total Element in Stack 6.Empty Stack 7.Exit" );
do
{
printf("\n Enter Choice:");
scanf("%d",&choice);
switch(choice)
{
    case 1:
    {
        push();
        break;
    }
    case 2:
    {
        pop();
        break;
    }
    case 3:
    {
        display();
        break;
    }
    case 4:
    {
        topEle();
        break;
    }
    case 5:
    {
        printf("Total Element in Stack %d",top+1);
        break;
    }
    case 6:
    {
        emptyStack();
        break;
    }    
    case 7:
    {
        printf("Exited ");
        break;
    }
    default:
    {
        printf("\nInvalid Choice");
    }
}
}while(choice!=7);
return 0;
}


void push()
{
    if(top>=n-1)
    {
        printf("Stack is over flow");
    }
    else
    {   
        printf("Enter value to be pushed:");
        scanf("%d",&x);
        top++;
        stack[top]=x;
    }
}
void pop()
{
    if(top<=-1)
    {
        printf("Stack is under flow");
    }
    else
    {
        printf("popped elements is %d",stack[top]);
        top--;
    }
}
void display()
{
    if(top>=0)
    {
        printf("The elements in STACK ");
        for(i=top; i>=0; i--)
        printf("%d, ",stack[i]);
    }
    else
    {
        printf("STACK is empty");
    }
}
void topEle()
{
    if(top>=0)
    {
        printf("top element is %d",stack[top]);
    }
    else
    {
        printf("STACK is empty");
    }
}
void emptyStack()
{
    if(top>=0)
    {
        top=-1;
        printf("STACK is cleared");
    }
    else
    {
        printf("STACK is empty");
    }
}

