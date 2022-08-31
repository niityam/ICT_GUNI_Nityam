#include <stdio.h>

int main(void) {
	int total_order;
	int order[20];
	
	scanf("%d",&total_order);
	for(int i = 0; i<total_order; i++)
	{
        scanf("%d",&order[i]);
	}
	for(int i = 0; i<total_order; i++)
	{
        printf("%d ",order[i]);
	}
	printf("\n");
	scanf("%d",&order[total_order]);
	for(int i = 0; i<=total_order; i++)
	{
        printf("%d ",order[i]);
	}
	return 0;
}

