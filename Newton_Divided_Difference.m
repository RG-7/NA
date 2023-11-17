% Newton's Divided Difference Interpolation
clc;
clear;

% Given data points
x = [6.54 6.58 6.59 6.61 6.64];
y = [2.8156 2.8182 2.8189 2.8202 2.8222];

% Point to interpolate
xi =6.60;

n = length(x);
f = zeros(n, n);
f(:, 1) = y';

% Calculate divided differences
for j = 2:n
    for i = 1:n-j+1
        f(i, j) = (f(i+1, j-1) - f(i, j-1)) / (x(i+j-1) - x(i));
    end
end

% Evaluate interpolating polynomial at xi
result = f(1, 1);
term = 1;

for j = 1:n-1
    term = term * (xi - x(j));
    result = result + f(1, j+1) * term;
end

% Display the result
disp(['Interpolated value at xi: ', num2str(result)]);

% Output:- Interpolated value at xi: 2.8196