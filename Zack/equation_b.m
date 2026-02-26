% Save this as equation_b.m
x2 = linspace(-2*pi, 2*pi, 2000);
y2 = tan(x2);

% Remove vertical asymptotes from the drawing
y2(abs(y2) > 10) = NaN; 

figure(2)
plot(x2, y2, 'r', 'LineWidth', 1.5)
grid on
xlabel('x'); ylabel('y')
title('Graph (b): y = tan(x)')
ylim([-10 10])