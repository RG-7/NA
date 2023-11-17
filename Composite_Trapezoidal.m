clc;
clear;

% Composite Trapezoidal Method

%f=input("\nEnter the function f(x): ");
f=@ (x) 1/(1+x);
A=input("Enter lower limit a: ");
B=input("Enter upper limit b: ");
n=input("Enter the no. of subinterval: ");
h=(B-A)/n;
sum=0; %Formula: (h/2)[(f(a))+2(f(x1))+2*(f(x2))+...2*(f(xn-1))+(f(b))]
for k=1:1:n-1
    x(k)=A+k*h;
    y(k)=f(x(k));
    sum=sum+y(k);
end
answer=h/2*(f(A)+f(B)+2*sum);
fprintf("\n The value of integration is %f",answer);