clc;
clear all;
n = input("Enter number of trials: ");
a=randi([0,1],1,n)

 nh=length(find(a==1));
 nt=length(find(a==0));

printf("P(H) = %d\n",nh/n);
printf("P(T) = %d\n",nt/n);
10
