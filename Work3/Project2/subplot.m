% ECE 2315 Project 2 – Main script using separate equation functions
clc;
clear;
close all;

% Create figure
figure('Name','Project 2: Subplots (Modular)','NumberTitle','off');

%% Get data from each equation function
[x1, y1] = eq_a();
[x2, y2] = eq_b();
[x3, y3_pos, y3_neg] = eq_c();

%% Subplot 1: Equation (a)
subplot(2,2,1);
plot(x1, y1, 'b', 'LineWidth', 1.5);
grid on;
title('(a) y = x^3 - x');
xlabel('x');
ylabel('y');

%% Subplot 2: Equation (b)
subplot(2,2,2);
plot(x2, y2, 'r', 'LineWidth', 1.5);
grid on;
title('(b) y = tan(x)');
xlabel('x');
ylabel('y');

%% Subplot 3: Equation (c)
subplot(2,2,3);
plot(x3, y3_pos, 'g', 'LineWidth', 1.5);
hold on;
plot(x3, y3_neg, 'g', 'LineWidth', 1.5);
grid on;
title('(c) y^2 = x^3 - x');
xlabel('x');
ylabel('y');

%% Subplot 4: All equations together
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