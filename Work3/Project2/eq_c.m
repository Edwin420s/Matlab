function [x, y_pos, y_neg] = eq_c()
% EQ_C  y^2 = x^3 - x  on [-2.5, 2.5]  (both branches)
x = linspace(-2.5, 2.5, 2000);
expr = x.^3 - x;
expr(expr < 0) = NaN;      % keep only where real
y_pos = sqrt(expr);
y_neg = -sqrt(expr);
end