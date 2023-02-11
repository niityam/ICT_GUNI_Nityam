#include <stdio.h>
#include <unistd.h>

void sort(int num[], int n){
	for (int i = 0; i < n; ++i){
      for (int j = i + 1; j < n; ++j){
         if (num[i] > num[j]){
            int a = num[i];
            num[i] = num[j];
            num[j] = a;
         }
      }
   }
}
void displayasc(int num[], int n){
	printf("Parent Process: \n");
	printf("Sorted coins are : ");
	   for (int i = 0; i < n; ++i){
	      printf("%d", num[i]);
	      if(i!=n-1){
	      printf(", ");
	      }
	      else{
	      printf("\n");
	      }
   }
}
void displaydes(int num[], int n){
	printf("Child Process: \n");
	printf("Reversely sorted coins are: ");
	   for (int i = n-1; i >= 0; i--){
	      printf("%d", num[i]);
	      if(i!=0){
	      printf(", ");
	      }
	      else{
	      printf("\n");
	      }
   }
}

void main()
{
   pid_t pid;
   int num[20];
   int a, n = 5;
   
   printf("Input");
   for (int i = 0; i < n; ++i)
   	scanf("%d", &num[i]);
   sort(num, n);
      
   pid = fork();
   if(pid == 0){
   	displaydes(num, n);
   }
   else if (pid > 0){
   	displayasc(num, n);
   }
   else{
   	printf("Fork Failed");
   }
   
}
