clear all
close all
clc

to = input('to (s) = '); % t initial
tf = input('tf (s) = '); % t final
T = input('Step size (s) = '); % step size
t = to:T:tf; % time
x = sin(2*pi*1*t); % discrete signal x(t)
y_ideal = 2*pi*1*cos(2*pi*1*t); % analytical derivation

n = length(x);
y_num = zeros([1 n-1]); % temporary matrix 1X(n-1)
for i = 1:n-1;
    y_num(i) = (x(i+1)-x(i))/T;
end
t_num = t(1:n-1);

figure(1)
subplot 211
plot(t,x)

subplot 212
plot(t,y_ideal,t_num,y_num,'r*-')
legend('Analytical','Numerical')