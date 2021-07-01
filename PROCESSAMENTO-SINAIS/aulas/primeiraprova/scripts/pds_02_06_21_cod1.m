clear all;
close all;
clc;

n = 0:10;
w0 = 2*pi/3;
A = 1;
a = 0.4*exp(i*w0);
x_n = A*a.^n;

figure;
subplot(211);
stem(n,real(x_n),'filled','markersize',15);
grid on;
set(gca,'fontsize',25);
xlabel('Re(x[n])');
title('x[n]=A\times\alpha^n | |\alpha|=0.4 | \omega_0=2\pi/3');

subplot(212);
stem(n,imag(x_n),'filled','markersize',15);
grid on;
set(gca,'fontsize',25);
xlabel('Im(x[n])');