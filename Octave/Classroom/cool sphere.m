n = 100;
t1 = pi*(-n:5:n)/n;
t2 = (pi/2)*(-n:5:n)'/n;
X = cos(t2)*cos(t1);
Y = cos(t2)*sin(t1);
E = ones(size(t1));
Z = sin(t2)*E;
plot3(X, Y, Z, 'b'), grid on
