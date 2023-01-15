%Modul 4 Exercise 7
clear all
close all
clc

t = 0:0.001:2; % Time
R = 3; % Resistance of the resistor
C = 100/10^3; % Capacitance of the capacitor
s = tf('s');
G1 = tf([C 0],[C*R 1]); % Transfer function G1
G2 = tf(R,1); % Transfer function G2
G = tf([C*R 0],[C*R 1]); % Transfer function G

vin = t; % Input signal as a ramp signal
vout = lsim(G,vin,t); % Response (voltage output)
i = lsim(G1,vin,t); % Response (current output)
figure (4)
subplot 211
plot(t,i)
subplot 212
plot(t,vout)