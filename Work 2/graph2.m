x = -2 * pi : 0.01 : 2 * pi;
y = tan(x);
y(abs(y) > 10) = NaN;
figure;
plot(x, y, 'r', 'LineWidth', 1.5);
title('(b) y = tan(x) on [-2\pi, 2\pi]');
xlabel('x');
ylabel('y');
xlim([-2 * pi 2 * pi]);
ylim([-10 10]);
xticks([-2 * pi - 3 * pi / 2 - pi - pi / 2 0 pi / 2 pi 3 * pi / 2 2 * pi]);
xticklabels(
    {'-2\pi' '-3\pi/2' '-\pi' '-\pi/2' '0' '\pi/2' '\pi' '3\pi/2' '2\pi'});
grid on;
