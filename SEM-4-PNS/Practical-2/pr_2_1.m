clc;
clear all;
n = input("Enter number of trials: ");
a=randi([0,1],1,n)

 h=0;
 t=0;
 for i=1:length(a)
 if (a(i)==1)
  h = h + 1;
 else
  t = t + 1;
 endif

endfor

printf("P(H) = %d\n",h/(h+t));
printf("P(T) = %d\n",t/(h+t));
