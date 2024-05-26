function baguett(l, d, a, p)
  angle_rad = a * pi / 180;
  thickness = l / p;

  figure('Position', [100 100 800 400]);
  subplot(1, 2, 1);

  [x, y, z] = cylinder(d / 2, 50);
  colormap autumn;
  z = z * l;
  surf(x, y, z);
  axis equal;
  xlabel('X');
  ylabel('Y');
  zlabel('Z');
  title('Целый багет');

  subplot(1, 2, 2);

  for i = 1:2:p
    start = (i - 1) * thickness;
    stop = start + thickness;

    x1 = d / 2 * cos(angle_rad);
    y1 = d / 2 * sin(angle_rad);
    x2 = d / 2 * cos(angle_rad + pi);
    y2 = d / 2 * sin(angle_rad + pi);

    [x, y, z] = cylinder(d / 2, 50);
    z = z * thickness;
    surf(x, y, z + start);
    hold on;

    plot3([x1, x2], [y1, y2], [start, start], 'k-', 'LineWidth', 2);
    plot3([x1, x2], [y1, y2], [stop, stop], 'k-', 'LineWidth', 2);
  end

  axis equal;
  xlabel('X');
  ylabel('Y');
  zlabel('Z');
  title('Нарезанный багет');
end
