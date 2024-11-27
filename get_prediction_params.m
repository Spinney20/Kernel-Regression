function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  n = size(K, 1);
  A = K + lambda * eye(n);

  %Solving the system A * a = lambda * y
  a = A \ (lambda * y);
endfunction
