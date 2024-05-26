function res = checkerboard (row, col)
  if nargin < 2
    n = row;
    m = row;
  else
    n = row;
    m = col;
  endif
  res = zeros(n, m, 'logical');
  for r = 1:n
      for c = 1:m
          res(r, c) = mod(r+c, 2) == 0;
      end
   end
endfunction
