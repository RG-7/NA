clc;
clear;

%   Eulers Modified Method

f = @(x, y) x*y;

x =input("Value of x: ");
y =input("Value of y: ");
h =input("Value of h: ");
X =input("Value of X: ");

variables = {'x','y','fxy','yp','newx','fyp','yc'};
k=1;

while X-x>=-10^(-10)
    fprintf("Value of y at x = %0.2f is %f\n",x,y);

    fxy = f(x,y);
    yp = y+h*fxy;
    newx = x+h;
    fxyp = f(newx,yp);
    yc = y+(h/2)*(fxy+fxyp);
    resul(k,:) = [x y fxy yp newx fxyp yc];
    k=k+1;
    x = x+h;
    y = yc;
end
disp(variables);
disp(resul);
