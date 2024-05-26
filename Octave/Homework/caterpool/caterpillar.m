function caterpillar(x,y,n)
% Отрисовывает "гусеницу" в движении по кривой
% x, y - координаты точек кривой
% n - количество частей "гусеницы"
  if length(x) ~= length(y) || length(x) < n
    return;
  end
  
  figure;
  hold on;
  
  for i = 1:n
    center_x = x(i);
    center_y = y(i);
    radius = 0.1;
    
    theta = linspace(0, 2*pi, 50);
    circle_x = center_x + radius * cos(theta);
    circle_y = center_y + radius * sin(theta);
    plot(circle_x, circle_y, 'k-');
  end
  
  plot(x, y, 'r-', 'LineWidth', 2);
  axis equal;
  xlabel('X');
  ylabel('Y');
end
