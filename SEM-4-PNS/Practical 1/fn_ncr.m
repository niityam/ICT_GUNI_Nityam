function[op]=fn_ncr(n,r);

  arr=zeros(1,r+1);
  rgp=0:r;
  fact=1;

  # N factorial
  fact=fn_fact(n);

  for j=0: r
    fact2=1;
    fact3=1;

    # N-R factorial
    fact2 = fn_fact(n-j);

    # R factorial
    fact3 = fn_fact(j);

    op=fact/(fact2*fact3)

    arr(j+1) = op;
  endfor

  plot(rgp,arr,'r*', 'Markersize',12)
  title("Graph of r & nCr");
  xlabel("Variable r");
  ylabel(" nPr");
endfunction
