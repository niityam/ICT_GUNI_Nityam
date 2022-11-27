#include <stdio.h>
void display(int arr[], int n);
int search(int arr[], int n, int value);
int main() {
	// your code goes here
	int n, j, temp, value, pos;
	scanf("%d",&n);
	int arr[n];
	for (int i=0; i<n;i++){
	    scanf("%d", &arr[i]);
	}
	scanf("%d",&pos);
	scanf("%d",&value);
	for(int i=1; i<n; i++)
	{
	    printf("\nPass-%d ",i);
        display(arr, n);
        temp = arr[i];  
        j = i - 1;  
  
        while(j>=0 && temp <= arr[j])  
        {    
            arr[j+1] = arr[j];     
            j = j-1;    
        }    
        arr[j+1] = temp; 
	    
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

