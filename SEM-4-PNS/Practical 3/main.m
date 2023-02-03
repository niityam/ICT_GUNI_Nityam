clc; clear all; close all;

dx=0.5;
x=-10:dx:10;
s=1; u=2;


pdf = fn_pdf(x, dx, s, u);
sum_pdf = sum(pdf)

cdf = fn_cdf(pdf, x);
sum_cdf = sum(cdf)

mean = fn_mean(pdf, x)
variance = fn_variance(pdf, x)
