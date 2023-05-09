clc;
clear all;
close all;
fm=input('Enter Message Signal Frequency (15): ');
t=0:0.0001:0.25;
m=sin(2*pi*fm*t);
subplot(3,1,1);
plot(t,m,'b');
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;
fc=input('Enter Carrier Signal Frequency (100): ');
c=sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,c,'r');
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
grid on;
modulationindex=50;
y=sin(2*pi*fc*t+(modulationindex.*sin(2*pi*fm*t)));
subplot(3,1,3);
plot(t,y,'m');
xlabel('Time');
ylabel('Amplitude');
title('Phase Modulated Signal');



