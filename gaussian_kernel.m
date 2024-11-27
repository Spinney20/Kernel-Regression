function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implement gaussian kernel function
  retval = exp(-dot(x-y, x-y) / (2 * sigma^2));
endfunction
