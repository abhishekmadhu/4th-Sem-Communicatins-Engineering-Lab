%Abhishek Madhu
%Amplitude modulation simulation
%DAY 2 LAB

close all;
clear all;
clc;
t=0:0.001:1;

% am=input('Enter Amplitude of message wave:  ');
% fm=input('Enter Frequency of message wave:  ');
% ac=input('Enter Amplitude of carrier wave:  ');
% fc=input('Enter Frequency of carrier wave:  ');


am=2; fm=10; %to debug
ac=2; fc=100; %to debug


mt = am*cos(2*pi*fm*t);
ct = ac*cos(2*pi*fc*t);

st = (ac+mt).*cos(2*pi*fc*t);




dt=st.*cos(2*pi*fc*t);

%BUTTER WORTH FILTER

fs = 1000;
[b, a] = butter(10, (fc*2)/fs);
x1=filter(b,a,dt);


subplot(5,1,1);
plot(t,mt,'b')
title('Message Signal m(t)', 'Color', 'green');
xlabel("Time(t)", 'Color', 'blue', 'FontSize', 9)
ylabel("Amplitude", 'Color', 'blue', 'FontSize', 9)

subplot(5,1,2);
plot(t,ct,'r')
title('Carrier Signal C(t)', 'Color', 'green');
xlabel("Time(t)", 'Color', 'blue', 'FontSize', 9)
ylabel("Amplitude", 'Color', 'blue', 'FontSize', 9)

subplot(5,1,3);
plot(t,st,'magenta')
title('Modulated Signal S(t)', 'Color', 'green');
xlabel("Time(t)", 'Color', 'blue', 'FontSize', 9)
ylabel("Amplitude", 'Color', 'blue', 'FontSize', 9)

subplot(5,1,4);
plot(t,dt,'magenta')
title('DeModulated Unfiltered Signal', 'Color', 'green');
xlabel("Time(t)", 'Color', 'blue', 'FontSize', 9)
ylabel("Amplitude", 'Color', 'blue', 'FontSize', 9)
ylim([0, 5])

subplot(5,1,5);
plot(t,x1,'magenta')
title('DeModulated Filtered Signal', 'Color', 'green');
xlabel("Time(t)", 'Color', 'blue', 'FontSize', 9)
ylabel("Amplitude", 'Color', 'blue', 'FontSize', 9)
ylim([0, 5])
