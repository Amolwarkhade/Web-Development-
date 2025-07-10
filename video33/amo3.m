clc;
close all;

aclear all;=5; % Amplitude
t=0:0.001:1;
f1=input('carrier frequency:'); % for example 20
f2=input('pulse frequency:'); % for example 5
x=a.*sin(2*pi*f1*t); %carrier
subplot(3,1,1);
plot(t,x);
title('Carrier');
grid on;
u=square(2*pi*f2*t) % Messag
subplot(3,1,2);
plot(t,u);
title('Square Pulses');
grid on;
v=x.*u;
subplot(3,1,3);
plot(t,v);
title('PSK Signal');
grid on;