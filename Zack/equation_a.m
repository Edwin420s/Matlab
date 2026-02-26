% Save this as equation_a.m
x1 = linspace(-1.5, 1.5, 1000);
y1 = x1.^3 - x1;

figure(1)
plot(x1, y1, 'b', 'LineWidth', 1.5)
grid on
xlabel('x'); ylabel('y')
title('Graph (a): y = x^3 - x')