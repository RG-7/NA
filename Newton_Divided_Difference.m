% Newton's Divided Difference Interpolation
clc;
clear;

x = [0 1 2 4 5 6];
y = [1 14 15 5 6 19];
xi =3;

n = length(x);
f = zeros(n, n);
f(:, 1) = y';

for j = 2:n
    for i = 1:n-j+1
        f(i, j) = (f(i+1, j-1) - f(i, j-1)) / (x(i+j-1) - x(i));
    end
end

result = f(1, 1);
term = 1;

for j = 1:n-1
    term = term * (xi - x(j));
    result = result + f(1, j+1) * term;
end

disp(['Interpolated value at xi: ', num2str(result)]);
