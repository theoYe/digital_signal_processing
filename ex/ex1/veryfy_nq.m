% 
%
%
close;
clear all;

A = 444.128;
alpha = 50*sqrt(2)*pi;
Omega = 50*sqrt(2)*pi;

% 三种信号采样频率
Fs1 = 1000;
Fs2 = 300;
Fs3 = 200;

n = 10; %设置采样点数为10


Fs = 44000;
%原始信号
t= 0:1/Fs:0.04;  
x_at = A.*exp(-alpha.*t).*sin(Omega*t);

% 加矩形窗
deltaf = 1;
T = 1./Fs;


L = 1024;  % 数据窗口长度1024
t = (0:L-1)/Fs; 
freq = (0:L-1)*Fs/L;




subplot(221)
% 绘制x(t)曲线
plot(t,x_at)
xlabel("t");
ylabel("x(t)幅值")

% 绘制X(ω)曲线
subplot(222)

Xwt = fft(x, L);
plot(abs(Xwt))











