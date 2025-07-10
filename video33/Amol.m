clc;
close all;
clear all;
% Message signal input and ploting
n=[1 0 1 0 1 1 0]; % Message signal in binary form
N=length(n); % Length of message signal
fs = 1000*N; % Sampling frequency
t=0:1/fs:N; % Time division with step b
N1=length(t); % Length of total divisions
i=1;
%Run for Loop
for j=1:N1
if t(j)<=i
x(j)=n(i);
else
i=i+1;
end
end
figure(1);
subplot(3,2,1);
plot(t,x,'Linewidth',2); %Message signal plot
title('Message signal');
xlabel('Time');
ylabel('Amplitude');
grid on
%Carrier signals generation (x1,x2)
a=2; %Amplitude scale for carrier signal
f1=10; %1st carrier signal frequency
f2=5; %2nd carrier signal frequency
% Uncomment the following for user input
x1=a*sin(2*pi*f1*t); %1st carriersignal
subplot(3,2,2);
plot(t,x1); %1st carriersignal plot
title('1st carrier signal');
xlabel('Time');
ylabel('Amplitude');
grid on
x2=a*sin(2*pi*f2*t); %2nd carriersignal
subplot(3,2,3);
plot(t,x2); %2nd carriersignal plot
title('2nd carrier signal');
xlabel('Time');
ylabel('Amplitude');
grid on
%Modulation section
for j=1:N1
if x(j)==1
y1(j)=x1(j);
else
y1(j)=x2(j);
end
end
subplot(3,2,4);
%Plot of FSK output signal
plot(t,y1);
title('Modulated FSK output');
xlabel('Time');
ylabel('Amplitude');
grid on