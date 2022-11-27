#include<stdio.h>
#include<string.h>
int main(){
   int i,j,n;
   int count = 0;
   char str[100][100],s[100];
   scanf("%d",&n);
   int num[n];
   
   for(i=0;i<n;i++){
      scanf("%s",str[i]);
      scanf("%d", &num[i]);
   }
   
   for(i=0;i<n;i++){
      for(j=i+1;j<n;j++){
         if(strcmp(str[i],str[j])>0){
            strcpy(s,str[i]);
            strcpy(str[i],str[j]);
            strcpy(str[j],s);
         }
      }
   }
   printf("City-wise Patient Count\n");
   count = 0;
   for(int i = 0; i<n; i++){
       if(num[i] == 1){
          count++;
      }
   }
   printf("Ahmedabad-%d\n", count);
   
   count = 0;
   for(int i = 0; i<n; i++){
       if(num[i] == 2){
          count++;
      }
   }
   printf("Surat-%d\n", count);
   
   count = 0;
   for(int i = 0; i<n; i++){
       if(num[i] == 3){
          count++;
      }
   }
   printf("Baroda-%d\n", count);
   
   count = 0;
   for(int i = 0; i<n; i++){
       if(num[i] == 4){
          count++;
      }
   }
   printf("Rajkot-%d\n", count);
   
   count = 0;
   for(int i = 0; i<n; i++){
       if(num[i] == 5){
          count++;
      }
   }
   printf("Extra-%d", count);
   
   printf("\nPatient List\n");
   for(i=0;i<n;i++){
      printf("%s\n",str[i]);
    }
}
