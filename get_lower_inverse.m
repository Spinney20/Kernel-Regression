function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower

  % n = size of L and P initialized as identity matrix
  n = size(L,1);
  P = eye(n);

  %getting the inverse of subtrigular matrix
  for j = 1:n
      P(j:n, j) = L(j:n, j:n) \ eye(n-j+1, 1);
  endfor
endfunction
