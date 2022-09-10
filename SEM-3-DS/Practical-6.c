#include <stdio.h>

int main() {
    int n, inputs, val, counter=0;
    char str[10][1024];
    for(int i=0; i<10; i++){
        strcpy(str[i],"Valid");
    }
    scanf("%d",&n);
    for(int i=0; i<n; i++){
        scanf("%d",&val);
        for(int j=0; j<val; j++){
            scanf("%d", &inputs);
            if(inputs==0){
                counter-=1;
                if(counter<0){
                    strcpy(str[i],"Invalid");
                    continue;
                }
            }
            else{
                counter+=1;
            }
        }
        counter=0;
    }
    for(int i=0; i<n; i++){
    printf("%s \n",str[i]);
    }
    return 0;
}
