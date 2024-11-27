function retval = polynomial_kernel (x, y, d)
  # TO DO: implement polynomial kernel function
  %the formula from the PDF
  retval = (1 + x * y')^d;
endfunction
