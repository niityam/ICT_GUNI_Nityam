function [variance] = fn_variance (pdf, x)
for l =1: length(x)
  s1(l) = (x(l)^2)*pdf(l);
endfor
variance = sum(s1) - ((fn_mean(pdf, x))^2);
endfunction
