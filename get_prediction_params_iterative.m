function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  n = size(K, 1);
  A = K + lambda * eye(n);
  a_initial = zeros(n, 1);
  tol = 1e-6;
  max_iter = 1000;
  a = conjugate_gradient(A, y, a_initial, tol, max_iter);
endfunction
