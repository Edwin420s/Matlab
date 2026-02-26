% Save this as equation_c.m
f = @(x,y) y.^2 - (x.^3 - x);

figure(3)
% The array [-2.5 2.5 -5 5] sets the x and y limits
fimplicit(f, [-2.5 2.5 -5 5], 'g', 'LineWidth', 1.5)
grid on
xlabel('x'); ylabel('y')
title('Graph (c): y^2 = x^3 - x')