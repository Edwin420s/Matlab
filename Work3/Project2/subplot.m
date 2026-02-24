clc;
clear;
close all;

figure('Name','Project 2: Subplots','NumberTitle','off');

[x1, y1] = eq_a();
[x2, y2] = eq_b();
[x3, y3_pos, y3_neg] = eq_c();

subplot(2,2,1);
plot(x1, y1, 'b', 'LineWidth', 1.5);
grid on;
title('(a) y = x^3 - x');
xlabel('x');
ylabel('y');

subplot(2,2,2);
plot(x2, y2, 'r', 'LineWidth', 1.5);
grid on;
title('(b) y = tan(x)');
xlabel('x');
ylabel('y');

subplot(2,2,3);
plot(x3, y3_pos, 'g', 'LineWidth', 1.5);
hold on;
plot(x3, y3_neg, 'g', 'LineWidth', 1.5);
grid on;
title('(c) y^2 = x^3 - x');
xlabel('x');
ylabel('y');

subplot(2,2,4);
plot(x1, y1, 'b', 'LineWidth', 1.5);
hold on;
plot(x2, y2, 'r', 'LineWidth', 1.5);
plot(x3, y3_pos, 'g', 'LineWidth', 1.5);
plot(x3, y3_neg, 'g', 'LineWidth', 1.5);
grid on;
title('(d) All Equations');
xlabel('x');
ylabel('y');
legend('x^3 - x', 'tan(x)', '\pm\sqrt{x^3 - x}', 'Location','best');