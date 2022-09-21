#include <stdio.h>


void enqueue(int queue[], int *front, int *rear, int val, int size){
    if(*rear == size-1){
        printf("\nQueue is full");
    }
    else{
        if(*front == -1){
            *front = 0;
        }
        *rear = *rear + 1;
        queue[*rear] = val;
    }
}

void dequeue(int queue[], int *front, int *rear){
    if(*front == -1 || *front > *rear){
        printf("Queue is empty");
    }
    else{
        *front = *front + 1;
    }
}

void display(int queue[], int *front, int *rear){
    if(*front == -1){
        printf("Queue is empty");
    }
    else{
        for(int i=*front; i<=*rear; i++){
            printf("%d ", queue[i]);
        }
    }
}

int main(){
    int queue[5], front=-1, rear=-1, val, size=5;
            
                scanf("%d", &val);
                enqueue(queue, &front, &rear, val, size);
                scanf("%d", &val);
                enqueue(queue, &front, &rear, val, size);
                scanf("%d", &val);
                enqueue(queue, &front, &rear, val, size);

                
                dequeue(queue, &front, &rear);
                dequeue(queue, &front, &rear);

                scanf("%d", &val);
                enqueue(queue, &front, &rear, val, size);
                
                dequeue(queue, &front, &rear);
                
                scanf("%d", &val);
                enqueue(queue, &front, &rear, val, size);
                display(queue, &front, &rear);
                scanf("%d", &val);
                enqueue(queue, &front, &rear, val, size);
        
    
    return 0;
}
