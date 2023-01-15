a = input('Nilai a = ');
b = input('Nilai b = ');
c = input('Nilai c = ');
det = b^2-4*a*c;
if det<0;
    disp('The roots are complex numbers.')
    x1 = (-b + sqrt(det))/(2*a)
    x2 = (-b - sqrt(det))/(2*a)
elseif det>0;
    disp('There are two distinct real roots.')
    x1 = (-b + sqrt(det))/(2*a)
    x2 = (-b - sqrt(det))/(2*a)
else
    disp('There roots are twin real numbers.')
    x = (-b)/(2*a);
end

clear all;
close all;
clc
% Here, the matrix elements are modified to be 0 when
% the value is < 3 but modified to be 1 if it is >= 3.
A = [1 2 3 4 5 6 7 8 9];
n = length(A);
for i = 1:n;
    if A(i)<3;
        A(i)=0;
    else
        A(i)=1;
    end
end