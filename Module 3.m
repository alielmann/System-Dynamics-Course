%DINSIS 3

%2
dsolve('D2x+4*x=0','x(0)= 0.5','Dx(0)=1')

dsolve('Dx+2=0','x(0)= 0')
dsolve('D2x+7*Dx=0','x(0)= 0','Dx(0)=0.1')
dsolve('D2x+5*x=0','x(0)= 1','Dx(0)=0')
dsolve('D2x+Dx+3*x=0','x(0)= 1','Dx(0)=-1')
dsolve('D2x+9*Dx+x=0','x(0)= 0','D2x(0)=1')
dsolve('D2x+9*x=0','x(0)= 0','D2x(0)=1')

%3
syms a
dsolve('D2x+a*Dx+x=0')

t= 1:0.01:10
A = dsolve('D2xasdsada')

y_num = subs(A,t) 























