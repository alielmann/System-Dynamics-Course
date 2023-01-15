clear all
close all
clc

t = 0:0.0001:10;
x_1 = sin(2*pi*1*t); % The original signal

n = length(x_1);
k = 1:200:n;
x_2 = x_1(k);
t_2 = t(k);

figure(1)
plot(t,x_1,'*k',t_2,x_2,'*r')
grid on
legend('x_1','x_2')
xlabel('Time (sec.)')
ylabel('Position (mm)')

figure(2)
plot(t,x_1,t_2,x_2,'*r')
grid on
legend('x_1','x_2')
xlabel('Time (sec.)')
ylabel('Position (mm)')