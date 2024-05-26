function hypersurf(A)
    [U, S, V] = svd(A(1:3, 1:3));
    [X, Y] = meshgrid(linspace(-1, 1, 100), linspace(-1, 1, 100));
    Z = -(1 / A(4,4)) * (A(1,4) * X.^2 + A(2,4) * Y.^2 + 2 * A(3,4) * X .* Y + A(4,1) * X.^2 + A(4,2) * Y.^2 + 2 * A(4,3) * X .* Y);

    figure;
    surf(X, Y, Z);
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title('Однополостный гиперболоид или гиперболический параболоид');
    axis equal;
    grid on;
end
