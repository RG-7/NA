clc;
clear;

%   Composite Simpson Method

% f=input('\ Enter the function f(x): ');
f=@ (x) 1/(1+x);
a=input('Enter the lower limit a: ');
b=input('Enter the upper limit b: ');
n=input('Enter the no. of subintervals n: ');
h=(b-a)/n;
if rem(n,2)==1
    fprintf('\n Enter valid n!!!');
    n=input('\n Enter n as even no. ');
end
so=0;
se=0;
for k=1:1:n-1
    x(k)=a+k*h;
    y(k)=f(x(k));
    if rem(k,2)==1
        so=so+y(k); % sum of odd terms
    else
        se=se+y(k); % sum of even terms
    end
end
answer=h/3*(f(a)+f(b)+4*so+2*se);
fprintf('\n The value of integration is %f',answer);