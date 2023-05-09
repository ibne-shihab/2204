clc;
clear all;
close all;
time=[0:0.001:5];
frqMod=input('Enter Message Signal Frequency (5): ');
ModFactor=15;
msg_sgl=sin(2*pi*frqMod*time);
subplot(3,1,1);
plot(time,msg_sgl,'b');
title('Message Signal');
xlabel('Time (t)');
ylabel('Amplitude');
frqCar=input('Enter Carrier Signal Frequency (50): ');
cari_sgl=sin(2*pi*frqCar*time);
subplot(3,1,2);
plot(time,cari_sgl,'m');
title('Carrier Signal');
xlabel('Time (t)');
ylabel('Amplitude');
FModulatedSig=sin(2*pi*frqCar*time+(ModFactor.*sin(2*pi*frqMod*time)));
subplot(3,1,3);
plot(time,FModulatedSig,'r');
title('Frequency Modulated Signal');
xlabel('Time (t)');
ylabel('Amplitude');




