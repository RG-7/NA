clc;
clear;

% Power Iteration Method

A = [3 1; 1 2];
X = ones(size(A, 1), 1); % Initial guess
max_iterations = 100;
tol = 1e-6;

for iter = 1:max_iterations
    Y = A * X;
    lambda = max(abs(Y));

    if norm(Y - lambda * X, inf) < tol
        fprintf('\nDominant eigenvector:\n');
        disp(X);
        fprintf('Dominant eigenvalue: %f\n', lambda);
        break;
    end

    X = Y / lambda;
end

if iter == max_iterations
    fprintf('Maximum iterations reached. Solution may not have converged.\n');
end