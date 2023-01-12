clc;
clear all;
close all;

n = input('Enter value of n: ');
r = input('Enter value of r: ');

fact= fn_ncr(n,r);
printf('Value:%d\n',fact);
