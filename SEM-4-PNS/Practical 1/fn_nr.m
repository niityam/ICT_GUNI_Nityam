function[op]=fn_nr(n,r)

  arr=zeros(1,r+1);
  rgp=0:r;
  fact=1;
  for i=1:n
    fact=fact*i;
  endfor

  for j=0: r
    fact2=1;
    for i=1:(n-j)
      fact2 = fact2*i;
    endfor
    op=fact/(fact2)
    arr(j+1) = op;

  endfor
  plot(rgp,arr,'r*', 'Markersize',12)
  title("Graph of r & nPr")
  xlabel("Variable r");
  ylabel(" nPr");
  op
endfunction
