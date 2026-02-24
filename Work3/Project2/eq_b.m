function [x, y] = eq_b()
% EQ_B  y = tan(x) on [-2π, 2π], removing asymptote spikes
x = linspace(-2*pi, 2*pi, 2000);
y = tan(x);
y(abs(y) > 10) = NaN;   % remove large values for clean plot
end