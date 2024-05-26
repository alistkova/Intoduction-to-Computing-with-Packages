function res = diagsn(r, c)
    if nargin < 2
      n = r;
      m = r;
    else
      n = r;
      m = c;
    endif
    res = zeros(n, m, 'uint32');
    num = 1;
    for slice = 1:(n+m-1)
        if mod(slice, 2) ~= 0
            r_start = max(1, slice-m+1);
            c_start = min(slice, m);
            while r_start <= n && c_start >= 1
                res(r_start, c_start) = num;
                ++num;
                ++r_start;
                --c_start;
            end
        else
            c_start = max(1, slice-n+1);
            r_start = min(slice, n);
            while c_start <= m && r_start >= 1
                res(r_start, c_start) = num;
                --r_start;
                ++c_start;
                ++num;
            end
        end
    end
end
