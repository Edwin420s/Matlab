function [x, y] = eq_b()
x = linspace(-2*pi, 2*pi, 2000);
y = tan(x);
y(abs(y) > 10) = NaN;
end