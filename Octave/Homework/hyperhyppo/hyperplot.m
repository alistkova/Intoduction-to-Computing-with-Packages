function hyperplot(A)  
    [U, S, V] = svd(A(1:3, 1:3));
    [V, D] = eig(A(1:3, 1:3));

    lambda = diag(S);
    v1 = V(:,1);
    v2 = V(:,2);
    v3 = V(:,3);

    figure;
    t = linspace(-1, 1, 100);
    for i = 1:3
        subplot(1,3,i);
        if lambda(i) > 0 
            plot3(t * v1(1) * sqrt(lambda(i)) + A(4,1), t * v1(2) * sqrt(lambda(i)) + A(4,2), t * v1(3) * sqrt(lambda(i)) + A(4,3), 'b');
            hold on;
            plot3(t * v2(1) * sqrt(lambda(i)) + A(4,1), t * v2(2) * sqrt(lambda(i)) + A(4,2), t * v2(3) * sqrt(lambda(i)) + A(4,3), 'r');
            plot3(t * v3(1) * sqrt(lambda(i)) + A(4,1), t * v3(2) * sqrt(lambda(i)) + A(4,2), t * v3(3) * sqrt(lambda(i)) + A(4,3), 'g');
        else
            plot3(t * v1(1) * sqrt(-lambda(i)) + A(4,1), t * v1(2) * sqrt(-lambda(i)) + A(4,2), t * v1(3) * sqrt(-lambda(i)) + A(4,3), 'b');
            hold on;
            plot3(t * v2(1) * sqrt(-lambda(i)) + A(4,1), t * v2(2) * sqrt(-lambda(i)) + A(4,2), t * v2(3) * sqrt(-lambda(i)) + A(4,3), 'r');
        end
        xlabel('X');
        ylabel('Y');
        zlabel('Z');
        axis equal;
        grid on;
    end
end
