#include <stdio.h>

int main(void) {
	int arr[5];
	for(int i = 0; i<5; i++)
	{
        scanf("%d",&arr[i]);
	}
	
	for(int i = 0; i<5; i++)
	{
        if (arr[i]%3 == 0){
            printf(" Multiple of 3: %d", arr[i]);
        }
        else if (arr[i]%5 == 0){
            printf(" Multiple of 5: %d", arr[i]);
        }
	}
	return 0;
}
