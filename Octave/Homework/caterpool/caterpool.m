function caterpool(start_pos, start_vel, left_bottom, right_top, iterations)
  pos = start_pos;
  vel = start_vel;
  leaf_width = right_top(1) - left_bottom(1);
  leaf_height = right_top(2) - left_bottom(2);
 
  figure;
  hold on;
  rectangle('Position', [left_bottom, leaf_width, leaf_height], 'FaceColor', 'g', 'EdgeColor', 'k');
  
  for i = 1:iterations
    center_x = pos(1);
    center_y = pos(2);
    radius = 0.1;
    
    theta = linspace(0, 2*pi, 50);
    circle_x = center_x + radius * cos(theta);
    circle_y = center_y + radius * sin(theta);
    plot(circle_x, circle_y, 'k-');
    
    pos = pos + vel;
    
    if pos(1) - radius < left_bottom(1)
      vel(1) = -vel(1);
      pos(1) = left_bottom(1) + radius;
    elseif pos(1) + radius > right_top(1)
      vel(1) = -vel(1);
      pos(1) = right_top(1) - radius;
    end
    
    if pos(2) - radius < left_bottom(2)
      vel(2) = -vel(2);
      pos(2) = left_bottom(2) + radius;
    elseif pos(2) + radius > right_top(2)
      vel(2) = -vel(2);
      pos(2) = right_top(2) - radius;
    end
  end
  
  axis equal;
  xlabel('X');
  ylabel('Y');
end
