%Exercise 2

%n = input('Banyak angka: ');
%fungsiangka = zeros(1, n);

%for i = 1:n
   % A = input('');
   % y1 = A*A*A;
   % fprintf('y1 = %d\n', y1);
%end
clear;
clc;
close all;
cd('C:\Praktikum1')
a = xlsread('Exercise_A.xlsx');
x = a(:,1);
y1 = a(:,2);
y2 = a(:,3);
y3 = a(:,4);
y4 = a(:,5);
plot(x,y1,x,y2,x,y3,x,y4);


t0 = input('t0 (s)= ')
t1 = input('t1 (s)= ')
S = input('Step Size (s)= ')
y = 2.*cos(pi*t);
ydot_ideal = -2.*pi.*sin(pi*t);

n = length(y);
y_n = zeros([1 n-1]);
for i = 1:n-1;
    y_n(i) = (y(i+1)-y(i))/S;
end
t_n = t(1:n-1);

figure(1)
subplot 211
plot(t,y)
subplot 212
plot(t,ydot_ideal,t_n,y_n,'r*-')
legend('Analytical','Numerical')




