clc;
clear all;
close all;
t= 0: 0.0001 : 0.2;
fm=input('Enter Message Signal Frequency (20): ');
m_t = cos(2*pi*fm*t);
subplot(5, 1, 1);
plot(t,m_t);
title('Message signal');
xlabel('Time');
ylabel('Amplitude');
fc=input('Enter Carrier Signal Frequency (500): ');
m_c = cos(2*pi*fc*t);
subplot(5, 1, 2);
plot(t,m_c);
title('Carrier signal');
xlabel('Time'); 
ylabel('Amplitude');
ka= 1;
v_1 = (1 + ka* m_t).*m_c;
subplot(5, 1, 3);
plot(t, v_1);
title('Amplitude Modulated wave');
xlabel('Time'); 
ylabel('Amplitude');
v =( v_1 )+ ((v_1) .* ( v_1));
subplot(5, 1, 4);
plot(t, v);
title('Output of the square law device');
xlabel('Time');
ylabel('Amplitude');
F = fir1(100, 0.0001, 'low');
am_demodulation = filter(F , 2, v);
subplot(5, 1, 5);
plot(t, am_demodulation );
title('Demodulated signal, after using low pass filter');
xlabel('Time');
ylabel('Amplitude');