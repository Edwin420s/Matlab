figure;

subplot(3, 1, 1);
x1 = -1.5 : 0.01 : 1.5;
y1 = x1.^ 3 - x1;
plot(x1, y1, 'b', 'LineWidth', 1.5);
title('(a) y = x^3 - x on [-1.5, 1.5]');
xlabel('x');
ylabel('y');
xlim([-1.5 1.5]);
grid on;

subplot(3, 1, 2);
x2 = -2 * pi : 0.01 : 2 * pi;
y2 = tan(x2);
y2(abs(y2) > 10) = NaN;
plot(x2, y2, 'r', 'LineWidth', 1.5);
title('(b) y = tan(x) on [-2\pi, 2\pi]');
xlabel('x');
ylabel('y');
xlim([-2 * pi 2 * pi]);
ylim([-10 10]);
xticks(
    [ -2 * pi, -3 * pi / 2, -pi, -pi / 2, 0, pi / 2, pi, 3 * pi / 2, 2 * pi ]);
xticklabels({'-2\pi', '-3\pi/2', '-\pi', '-\pi/2', '0', '\pi/2', '\pi',
             '3\pi/2', '2\pi'});
grid on;

subplot(3, 1, 3);
xg = linspace(-2.5, 2.5, 500);
yg = linspace(-2.5, 2.5, 500);
[ Xg, Yg ] = meshgrid(xg, yg);
Zg = Yg.^ 2 - Xg.^ 3 + Xg;
contour(Xg, Yg, Zg, [0 0], 'g', 'LineWidth', 1.5);
title('(c) y^2 = x^3 - x on [-2.5, 2.5]');
xlabel('x');
ylabel('y');
xlim([-2.5 2.5]);
ylim([-2.5 2.5]);
grid on;
