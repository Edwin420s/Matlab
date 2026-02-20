x = -1.5 : 0.01 : 1.5;
y = x.^ 3 - x;
figure;
plot(x, y, 'b', 'LineWidth', 1.5);
title('(a) y = x^3 - x on [-1.5, 1.5]');
xlabel('x');
ylabel('y');
xlim([-1.5 1.5]);
grid on;
