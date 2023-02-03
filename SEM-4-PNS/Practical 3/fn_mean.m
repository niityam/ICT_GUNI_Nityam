function [meansum] = fn_mean (pdf, x)
for k = 1:length(pdf)
  mean(k) = x(k) * pdf(k);
endfor
meansum = sum(mean);;
endfunction
