// Online C compiler to run C program online
#include <stdio.h>

struct queue {
    int size;
    int f;
    int r;
    int *arr;
};
int is_Empty(struct queue *q){
    if(q->r == q->f){
        return 1;
    }
    return 0;
}
int is_Full(struct queue *q){
    if((q->r+1)%q->size == q->f){
        return 1;
    }
    return 0;
}
void enqueue(struct queue *q,int val){
    if(is_Full(q)){
       printf("\n!!Full!!\n");
    }
    else{
        q->r = (q->r+1)%q->size;
        q->arr[q->r] = val;
    }
}
void dequeue(struct queue *q){
    if(is_Empty(q)){
        printf("Is_Empty\n");
    }
    else{
        q->f = (q->f+1)%q->size;
        printf("DEQ->%d\n",q->arr[q->f]);
    }
}

int main() {
    struct queue * q = (struct queue*) malloc(sizeof(struct queue));
    q->f = 0;
	q->r = 0;
	q->size = 4;
	q->arr = (int*)malloc(q->size*sizeof(int));
	int hold;
    for(int i=0;i<4;i++){
	    scanf("%d", &hold);
	    if(i<3){
	    printf("->%d",hold);
	    }
	    enqueue(q,hold);
	}    
    printf("Front->%d\n",q->f);
	for(int i=1;i<4;i++){
	    printf("->%d",q->arr[i]);
	}
	printf("\n");
	printf("Rear->%d\n",q->r);
	dequeue(q);
	dequeue(q);
	enqueue(q,hold);
	printf("ENQ->%d\n",q->arr[q->r]);
	printf("Front->%d\n",q->f);
	int j =0;
	printf("->%d->%d\n",q->arr[q->f+1],q->arr[q->r]);
	printf("Rear->%d",q->r);       
    return 0;
}
