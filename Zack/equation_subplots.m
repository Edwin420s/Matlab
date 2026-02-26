% Save this as equation_subplots.m

% Define variables
x1 = linspace(-1.5, 1.5, 1000);
y1 = x1.^3 - x1;

x2 = linspace(-2*pi, 2*pi, 2000);
y2 = tan(x2);
y2(abs(y2) > 10) = NaN; 

f = @(x,y) y.^2 - (x.^3 - x);

% Create the subplot figure
figure('Name', 'All Equations Subplot')

% Subplot 1
subplot(2, 2, 1)
plot(x1, y1, 'b', 'LineWidth', 1.5)
grid on; xlabel('x'); ylabel('y'); title('y = x^3 - x')

% Subplot 2
subplot(2, 2, 2)
plot(x2, y2, 'r', 'LineWidth', 1.5)
grid on; xlabel('x'); ylabel('y'); title('y = tan(x)')
ylim([-10 10])

% Subplot 3
subplot(2, 2, 3)
fimplicit(f, [-2.5 2.5 -5 5], 'g', 'LineWidth', 1.5)
grid on; xlabel('x'); ylabel('y'); title('y^2 = x^3 - x')

% Subplot 4: All combined
subplot(2, 2, 4)
hold on
plot(x1, y1, 'b', 'LineWidth', 1.5)
plot(x2, y2, 'r', 'LineWidth', 1.5)
fimplicit(f, [-2.5 2.5 -5 5], 'g', 'LineWidth', 1.5)
hold off

grid on; xlabel('x'); ylabel('y'); title('Combined Plot')
ylim([-10 10])
legend('y = x^3 - x', 'y = tan(x)', 'y^2 = x^3 - x', 'Location', 'best')