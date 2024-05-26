function [x1, x2] = bridgy(y1, y2)
  x_min = fminbnd(@(x) y2(x) - y1(x), -inf, inf);
  
  y1_min = y1(x_min);
  y2_min = y2(x_min);
  
  bridge_length = sqrt((x_min^2) + ((y2_min - y1_min)^2));
  
  fprintf('Оптимальное расположение моста:\n');
  fprintf('x1 = %.2f, y1 = %.2f\n', x_min, y1_min);
  fprintf('x2 = %.2f, y2 = %.2f\n', x_min, y2_min);
  fprintf('Длина моста: %.2f\n', bridge_length);

  x1 = x_min;
  x2 = x_min;
end
