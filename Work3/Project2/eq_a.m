function [x, y] = eq_a()
% EQ_A  y = x^3 - x on [-1.5, 1.5]
x = linspace(-1.5, 1.5, 1000);
y = x.^3 - x;
end