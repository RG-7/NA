% Gauss-Seidel Method

clear;
clc;

% Example Usage
A = [7 -3 1; 2 9 -3; 5 4 11];
b = [21; 37; 15];
initialGuess = zeros(size(b));
tolerance = 1e-6;
maxIterations = 1000;

% Gauss-Seidel Method
n = length(b);
x = initialGuess;

for k = 1:maxIterations
    xOld = x;

    for i = 1:n
        sigma = A(i, 1:i-1) * x(1:i-1) + A(i, i+1:end) * xOld(i+1:end);
        x(i) = (b(i) - sigma) / A(i, i);
    end

    if norm(x - xOld, inf) < tolerance
        disp(['Gauss-Seidel converged in ', num2str(k), ' iterations.']);
        break;
    end
end

if k == maxIterations
    disp('Gauss-Seidel did not converge within the specified number of iterations.');
end

% Display the solution vector
disp('Solution vector:');
disp(x);
