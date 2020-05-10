% 
%
%
close;
clear all;

A = 444.128;
alpha = 50*sqrt(2)*pi;
Omega = 50*sqrt(2)*pi;

% �����źŲ���Ƶ��
Fs1 = 1000;
Fs2 = 300;
Fs3 = 200;

n = 10; %���ò�������Ϊ10


Fs = 44000;
%ԭʼ�ź�
t= 0:1/Fs:0.04;  
x_at = A.*exp(-alpha.*t).*sin(Omega*t);

% �Ӿ��δ�
deltaf = 1;
T = 1./Fs;


L = 1024;  % ���ݴ��ڳ���1024
t = (0:L-1)/Fs; 
freq = (0:L-1)*Fs/L;




subplot(221)
% ����x(t)����
plot(t,x_at)
xlabel("t");
ylabel("x(t)��ֵ")

% ����X(��)����
subplot(222)

Xwt = fft(x, L);
plot(abs(Xwt))











