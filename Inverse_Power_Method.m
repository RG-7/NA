clc;
clear;

% Inverse Power Method

tol = 10^(-3);
A = [2, -1, 0; -1, 2, -1; 0, -1, 2];
A0 = inv(A);
x0 = [1; 1; 1];

while true
    temp = A0 * x0;
    k = max(abs(temp));
    x = temp / k;

    if norm(x0 - x, inf) < tol
        fprintf("\nThe eigenvector is:\n");
        disp(x);
        fprintf("\nThe smallest eigenvalue is: %f\n", 1 / k);
        break;
    end

    x0 = x;
end