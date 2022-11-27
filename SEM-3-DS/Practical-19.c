#include <stdio.h>
void display(int arr[], int n);
int search(int arr[], int n, int value);
int main() {
	// your code goes here
	int n, j, min_idx, value, pos, temp;
	scanf("%d",&n);
	int arr[n];
	for (int i=0; i<n;i++){
	    scanf("%d", &arr[i]);
	}
	scanf("%d",&pos);
	scanf("%d",&value);
	for (int i = 0; i < n-1; i++)
    {
        min_idx = i;
        for (j = i+1; j < n; j++)
          if (arr[j] < arr[min_idx])
            min_idx = j;
            
           if(min_idx != i)
           {
               temp = arr[min_idx];
               arr[min_idx] = arr[i];
               arr[i] = temp;
           }
           
        printf("\nPass-%d ",i+1);
        display(arr, n);
    }
	printf("\nElement %d found at position %d",value, search(arr, n, value));
	return 0;
}
void display(int arr[], int n)
{
    for(int i = 0; i<n; i++){
            printf("%d ",arr[i]);
        }
}
int search(int arr[], int n, int value){
	for(int i=0;i<n; i++){
	    if(arr[i] == value){
	        return i+1;
	    }
	}
    
}
