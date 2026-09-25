clear; close all; clc;

t = -1: 0.001: 1;
A= 2; f0= 5; phi= pi/6;
x= A*sin(2*pi*f0*t + phi);

figure('Color', 'W');
plot(t,x, 'LineWidth', 2); grid on;
xlabel('Temps (s)');ylabel('Amplitude');
title ('Sinusoide de 5Hz, amplitude 2')

hold on;

A= 1; f0= 10; phi= 0;
x= A*sin(2*pi*f0*t + phi);
plot(t,x, 'LineWidth', 2); grid on;