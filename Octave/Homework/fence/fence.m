function res = fence(r, c)
    if nargin < 2
      n = r;
      m = r;
    else
      n = r;
      m = c;
    endif
    res = ones(n, m, 'logical');
    res(:, 2:2:end) = 0;
end
