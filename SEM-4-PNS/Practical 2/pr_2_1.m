clc;
clear all;
n = input("Enter number of trials: ");
a=randi([0,1],1,n)

 h=0;
 t=0;
 for i=1:length(a)
  h += a(i)==1;
  t += a(i)==0;
endfor

printf("P(H) = %d\n",h/(h+t));
printf("P(T) = %d\n",t/(h+t));
