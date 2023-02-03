function [cdf] = fn_cdf (pdf, x)
  cdf(1) = pdf(1);
  for j=2:length(pdf)
    cdf(j) = cdf(j-1) + pdf(j);
  endfor
  plot(x,cdf,'b*')
endfunction
