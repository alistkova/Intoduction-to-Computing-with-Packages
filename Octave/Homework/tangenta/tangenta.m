function tangenta(f, dmin, dmax, n)
% Функция для построения графика касательной для параметрически заданной плоской кривой

    ds = linspace(dmin, dmax, 2*n+1);
    
    points = zeros(2, length(ds));
    for i = 1:length(ds)
        points(:, i) = f(ds(i));
    end
    
    derivatives = diffi(f, ds);
    
    d_middle = (dmin + dmax) / 2;
    f_middle = f(d_middle);
    derivative_middle = diffi(f, d_middle);
    
    tangent_points = [f_middle - 3 * derivative_middle, f_middle + 3 * derivative_middle];
    
    figure;
    plot(points(1,:), points(2,:), '-b');
    hold on;
    plot(tangent_points(1,:), tangent_points(2,:), '-r');
    axis equal;
    xlabel('X');
    ylabel('Y');
    grid on;
    hold off;
end
