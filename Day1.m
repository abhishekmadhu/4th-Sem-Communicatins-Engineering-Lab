
clc;
clear all;
close all;
t=0:0.001:1;
vm=input('Enter the value of vm : ');
fm=input('Enter the value of fm : ');
m=vm*sin(2 * pi * fm * t);
subplot(2,1,1);
plot(t,m,'r')
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');
grid on;
subplot(2,1,2);
stem(t,m,'b')
title('Sine Discrete Wave');
xlabel('Time');
ylabel('Amplitude');
grid on;