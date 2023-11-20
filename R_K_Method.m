% Runge-Kutta Method
clear;
clc;
f = @(x,y) x*(y^(1/3));
x= input("Enter the value of x : ");
y= input("Enter the value of y : ");
h= input("Enter the value of h (step size) : ");
X= input("Enter the value of X at which Y is required : ");

while X-x>= -10^(-10)
    fprintf("Value of y at x = %0.2f is %f\n",x,y);

    k1= h*f(x,y);
    k2 = h*f(x+h/2,y+k1/2);
    k3 = h*f(x+h/2,y+k2/2);
    k4 =h*f(x+h,y+k3);
    k=(k1+2*k2+2*k3+k4)/6;

    x=x+h;
    y=y+k;
end
