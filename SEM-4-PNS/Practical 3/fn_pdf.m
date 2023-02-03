function [pdf] = fn_pdf (x, dx, s, u)

  ## To Compute PDF
  for i=1:length(x)
  pd(i) = (1/(s*sqrt(2*pi)))*e^(-0.5*((x(i)-u)/s)^2);
  pdf(i) = pd(i) * dx;
  endfor
  plot(x,pdf,'b*')
endfunction
