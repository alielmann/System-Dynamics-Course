%Modul 5

%1
Rf = 4.63;
Lf = 8.11e-3;
Km = 3.761e-3;
J = 1.9e-5;
f = 4.9e-6;

t = 0:0.01:10;
vf = ones(size(t));
Td = 0.5e-3*sin(2*pi*t);

s = tf('s');
G1 = Km/(Lf*s+Rf)/(J*s+f);
w1 = lsim(G1,vf,t);
G2 = 1/(J*s+f);
w2 = lsim(G2,Td,t);
w = w1-w2;
tetha = lsim(1/s,w,t);
i_f = lsim(1/(Lf*s+Rf),vf,t);

plot(t,w1,t,w2,t,w,'LineWidth',2),grid on
legend('\omega_1','\omega_2','\omega')

%2
Rf = 4.63;
Lf = 8.11e-3;
Km = 3.761e-3;
J = 1.9e-5;
f = 4.9e-6;

t = 0:0.01:10;
vf = ones(size(t))+0.1*sin(2*pi*t);
Td = 0.5e-3*sin(2*pi*t);

s = tf('s');
G1 = Km/(Lf*s+Rf)/(J*s+f);
w1 = lsim(G1,vf,t);
G2 = 1/(J*s+f);
w2 = lsim(G2,Td,t);
w = w1-w2;
tetha = lsim(1/s,w,t);
i_f = lsim(1/(Lf*s+Rf),vf,t);

plot(t,w1,t,w2,t,w,'LineWidth',2),grid on
legend('\omega_1','\omega_2','\omega')

%3
Rf = 4.63;
Lf = 8.11e-3;
Km = 3.761e-3;
J = 1.9e-5;
f = 4.9e-6;

t = 0:0.01:40;
vf = ones(size(t));
Td = 0.5e-3*sin(2*pi*t);

s = tf('s');
G1 = Km/(Lf*s+Rf)/(J*s+f);
w1a = lsim(G1,vf,t);
w1b = lsim(G1*exp(-5*s),vf,t);
w1 = w1a - w1b;
G2 = 1/(J*s+f);
w2 = lsim(G2,Td,t);
w = w1-w2;
tetha = lsim(1/s,w,t);
i_f = lsim(1/(Lf*s+Rf),vf,t);

plot(t,w1,t,w2,t,w,'LineWidth',2),grid on
legend('\omega_1','\omega_2','\omega')

%4
Rf = 4.63;
Lf = 8.11e-3;
Km = 3.761e-3;
J = 1.9e-5;
f = 4.9e-6;

t = 0:0.01:40;
vf = ones(size(t))+sign(sin(2*pi*t));
Td = 0.5e-3*sin(2*pi*t);

s = tf('s');
G1 = Km/(Lf*s+Rf)/(J*s+f);
w1 = lsim(G1,vf,t);
G2 = 1/(J*s+f);
w2 = lsim(G2,Td,t);
w = w1-w2;
tetha = lsim(1/s,w,t);
i_f = lsim(1/(Lf*s+Rf),vf,t);

plot(t,w1,t,w2,t,w,'LineWidth',2),grid on
legend('\omega_1','\omega_2','\omega')

%5
Rf = 4.63;
Lf = 8.11e-3;
Km = 3.761e-3;
J = 1.9e-5;
f = 4.9e-6;

t = 0:0.01:40;
vf = t;
Td = 0.5e-3*sin(2*pi*t);

s = tf('s');
G1 = Km/(Lf*s+Rf)/(J*s+f);
w1a = lsim(G1,vf,t);
w1b = 2*lsim(G1*exp(-5*s),vf,t);
w1c = 10*lsim(G1*exp(-10*s),vf,t);
w1 = w1a-w1b+w1c;
G2 = 1/(J*s+f);
w2 = lsim(G2,Td,t);
w = w1-w2;
tetha = lsim(1/s,w,t);
i_f = lsim(1/(Lf*s+Rf),vf,t);

plot(t,w1,t,w2,t,w,'LineWidth',2),grid on
legend('\omega_1','\omega_2','\omega')