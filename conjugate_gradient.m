function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
  # Implementati algoritmul pentru metoda gradientului conjugat

  r = b - A * x0;
  v = r;
  x = x0;
  tol = tol^2;
  k = 1;

  while k <= max_iter && (r' * r) > tol
      Ap = A * v;
      w = (r' * r) / (v' * Ap);
      x = x + w * v;
      r_old = r;
      r = r_old - w * Ap;
      z = (r' * r) / (r_old' * r_old);
      v = r + z * v;
      k = k + 1;
  endwhile

  return
endfunction
