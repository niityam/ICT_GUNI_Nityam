// Online C compiler to run C program online
#include <stdio.h>

int main() {
    int order[8]={101,102,103,104,105,106,107,108}, flag=0, i, choice, repnum, input;
    
    printf("Enter 1 to search, 2 to delete, 3 to replace \n");
    scanf("%d", &choice);
        
    printf("Enter order id \n");
    scanf("%d", &input);
    
    for(i=0;i<8;i++){
        if (order[i]==input){
            flag = 1;
            break;
        }
    }
    if (flag == 1){
        switch(choice)
        {
            case 1:
                printf("Order id Found");
            break;
            
            case 2:
                order[i] = '\0';
                printf("%d Order id Deleted Successfully", input);
            break;
            
            case 3:
                printf("Enter new order id to be replaced with \n");
                scanf("%d", &repnum);
                order[i] = repnum;
                printf("%d order id is now replaced with %d",input, repnum);
            break;
        }
        
    }
    else{
        printf("Entered order id not found!");
    }
    
    

    return 0;
}