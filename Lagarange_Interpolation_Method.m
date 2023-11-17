clc;
clear;

%   Lagarange Interpolation Method

x = [110 130 160 190];
y = [10.8 8.1 5.5 4.8];

X = 140;

for i = 1:size(x, 2)
    x1 = x;
    x1(i) = [];
    l(i) = prod(X - x1) / prod(x(i) - x1);
end

y_interpolated = sum(l .* y);

fprintf('Value of y at X=%f is %f\n', X, y_interpolated);