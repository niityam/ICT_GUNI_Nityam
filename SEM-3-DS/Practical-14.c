// doubly circular linked list insert, delete element at any position

#include<stdio.h>
#include<stdlib.h>

struct node
{
    int data;
    struct node *next;
    struct node *prev;
};

struct node *head, *tail;

void create(int n);
void insert(int pos, int data);
void del(int pos);
void display();
int location(int value);
int total();

int main()
{
    int n, pos, data;


    create(7);

    scanf("%d", &data); //81 inserted
    insert(1, data);
    
    scanf("%d", &pos); //92 inserted before 44
    scanf("%d", &data);
    insert(location(pos), data);
    
    scanf("%d", &pos); //43 inserted after 66
    scanf("%d", &data);
    insert(location(pos)+1, data);
    
    display();
    printf("\n%d Counts \n",total());
    
    del(total()); //delete at last
    
    scanf("%d", &pos);//delete 22
    del(location(pos)); 
    
    scanf("%d", &pos);//delete before 55
    del(location(pos)-1); 
    
    scanf("%d", &pos);//delete after 55
    del(location(pos)+1); 

    // del(pos);
    display();
    printf("\n%d Counts \n",total());
    
    return 0;
}

void create(int n)
{
    struct node *temp;
    int data, i;
    int array[]={11,22,33,44,55,66,77};

    head = (struct node *)malloc(sizeof(struct node));

    if(head == NULL)
    {
        printf("Memory can not be allocated.");
    }
    else
    {

        data=array[0];
        head->data = data;
        head->next = NULL;
        head->prev = NULL;

        tail = head;

        for(i=2; i<=n; i++)
        {
            temp = (struct node *)malloc(sizeof(struct node));

            if(temp == NULL)
            {
                printf("Memory can not be allocated.");
                break;
            }
            else
            {

                data=array[i-1];
                temp->data = data;
                temp->next = NULL;
                temp->prev = tail;

                tail->next = temp;
                tail = temp;
            }
        }

        head->prev = tail;
        tail->next = head;
    }
}

void insert(int pos, int data)
{
    struct node *temp, *newNode;
    int i;

    newNode = (struct node *)malloc(sizeof(struct node));

    if(newNode == NULL)
    {
        printf("Memory can not be allocated.");
    }
    else
    {
        newNode->data = data;
        newNode->next = NULL;
        newNode->prev = NULL;

        if(pos == 1)
        {
            newNode->next = head;
            newNode->prev = tail;
            head->prev = newNode;
            tail->next = newNode;
            head = newNode;
        }
        else
        {
            temp = head;

            for(i=2; i<=pos-1; i++)
            {
                temp = temp->next;
            }

            newNode->next = temp->next;
            newNode->prev = temp;
            temp->next->prev = newNode;
            temp->next = newNode;
        }
    }
}

void del(int pos)
{
    struct node *temp;
    int i;

    if(head == NULL)
    {
        printf("List is empty.");
    }
    else
    {
        temp = head;

        if(pos == 1)
        {
            head = head->next;
            head->prev = tail;
            tail->next = head;
            free(temp);
        }
        else
        {
            for(i=2; i<=pos; i++)
            {
                temp = temp->next;
            }

            temp->prev->next = temp->next;
            temp->next->prev = temp->prev;

            if(temp == tail)
            {
                tail = temp->prev;
            }

            free(temp);
        }
    }
}

void display()
{
    struct node *temp;
    int i, totalEle;
    totalEle = total();

    if(head == NULL)
    {
        printf("List is empty.");
    }
    else
    {
        temp = head;

        for(i=1; i<=totalEle; i++)
        {
            if(i == totalEle){
                printf("%d", temp->data);
                temp = temp->next;
            }
            else{
                printf("%d, ", temp->data);
                temp = temp->next;
            }
        }
    }
}
int location(int value)
{
    struct node *temp;
    int i;

    if(head == NULL)
    {
        printf("List is empty.");
    }
    else
    {
        temp = head;

        for(i=1; i<=total(); i++)
        {
            if(temp->data==value)
            {
                return i;
                break;
            }
            temp = temp->next;
        }
    }
}
int total()
{
    struct node *temp;
    int i;

    if(head == NULL)
    {
        printf("List is empty.");
    }
    else
    {
        temp = head;

        for(i=1; i<=100; i++)
        {
            if(temp->next==head)
            {
                return i;
                break;
            }
            temp = temp->next;
        }
    }
}

