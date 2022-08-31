// Online C compiler to run C program online
#include <stdio.h>

int main() {
    int child[10], ychild[10], midageadult[10], oldageadult[10], times, age, childC=0, ychildC=0, midageC=0, oldageC=0;
    char name[20];
    
    scanf("%d", &times);
    
    for(int i = 0; i<times; i++){
        scanf("%s", &name);
            
        scanf("%d", &age);
        
        if(age>=0 && age<=16){
            child[childC] = age;
            childC++;
        }
        else if(age>=17 && age<=30){
            ychild[ychildC] = age;
            ychildC++;
        }
        else if(age>=31 && age<=44){
            midageadult[midageC] = age;
            midageC++;
        }
        else {
            oldageadult[oldageC] = age;
            oldageC++;
        }
    }
    printf("Child(0-16)-%d\n",childC );
    printf("Young Child(17-30)-%d\n",ychildC );
    printf("Middle Aged Adults(31-44)-%d\n",midageC );
    printf("Old Aged Adults(45+)-%d\n",oldageC );

    return 0;
}