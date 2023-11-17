% Runge-Kutta Method for the ODE dy/dx = x^2 + y^2
h = 0.05;  % step size
x = 1:h:1.05;  % Calculates up to x = 1.05
y = 1.2;  % Initial condition

fprintf('x\t\ty\n');  % Header for the output

% Runge-Kutta method loop
for xi = 1:h:1.05
    fprintf('%.2f\t%.4f\n', xi, y);  % Print x and y at each step
    
    k1 = h * (xi^2 + y^2);
    k2 = h * ((xi + h/2)^2 + (y + k1/2)^2);
    k3 = h * ((xi + h/2)^2 + (y + k2/2)^2);
    k4 = h * ((xi + h)^2 + (y + k3)^2);
    
    y = y + (1/6) * (k1 + 2*k2 +2*k3+k4);
end