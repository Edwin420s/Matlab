function [x, y_pos, y_neg] = eq_c()
x = linspace(-2.5, 2.5, 2000);
expr = x.^3 - x;
expr(expr < 0) = NaN;
y_pos = sqrt(expr);
y_neg = -sqrt(expr);
end