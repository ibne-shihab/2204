clc;
clear all;
close all;
time=[0:0.001:5];
frqnc_1=input('Enter Message Signal Frequency (5): ');
msg_sgl=sin(2*pi*frqnc_1*time);
subplot(5,1,1);
plot(time,msg_sgl,'b');
title('Message Signal');
xlabel('Time (t)');
ylabel('Amplitude');
frqunc_2=input('Enter Carrier Signal Frequency (50): ');
cari_sgl=sin(2*pi*frqunc_2*time);
subplot(5,1,2);
plot(time,cari_sgl,'m');
title('Carrier Signal');
mdlnIndx1=0.5;
SignalUn=(1+(mdlnIndx1*msg_sgl)).*cari_sgl;
subplot(5,1,3);
plot(time,SignalUn,'r');
title('Under Modulation Signal');
xlabel('Time (t)');
ylabel('Amplitude');
mdlnIndx2=1;
SignalCri=(1+(mdlnIndx2*msg_sgl)).*cari_sgl;
subplot(5,1,4);
plot(time,SignalCri,'g');
title('Critical Modulated Signal');
xlabel('Time (t)');
ylabel('Amplitude');
mdlnIndx3=1.5;
SignalOvr=(1+(mdlnIndx3*msg_sgl)).*cari_sgl;
subplot(5,1,5);
plot(time,SignalOvr,'b');
title('Over Modulation Signal');
xlabel('Time (t)');
ylabel('Amplitude');









