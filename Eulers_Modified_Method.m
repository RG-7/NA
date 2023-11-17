clc;
clear;

%   Eulers Modified Method

f = @(x, y) -y + 2*(cos(x));
h = 0.2;
x0 = 0;
y0 = 1;
N = ((y0-x0)/h);

for i = 1:N
    y = y0 + h*( (f(x0, y0)) );
    x = x0+h;
    y = y0 + (h/2)*(f(x0,y0)+f(x,y));
    y0 = y;
    x0 = x;
end
disp(y);