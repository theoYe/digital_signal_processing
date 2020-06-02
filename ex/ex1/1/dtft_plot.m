
omega = [0:0.01:4]
%===================使用DTFT 绘制 幅频特性曲线 Fs=1000======================
%Omega = [0:0.01:1000];  % 归一化模拟角频率
%omega = Omega/Fs1;   % 计算为数字角频率

xn1_dtft = dtft(xn1, omega);

subplot(424)
plot(omega,xn1_dtft);   % 利用模拟角频率进行绘制

xlabel("ω/\pi (rad/s)   Fs=1000Hz");
ylabel("X(ω)");

%===================使用DTFT 绘制 幅频特性曲线 Fs=300======================

Omega = [0:0.01:1000];  % 模拟频率
%omega = Omega/Fs2;   % 计算为数字角频率
xn1_dtft = dtft(xn2, omega);

subplot(426)
plot(omega,xn1_dtft);   % 利用模拟角频率进行绘制
xlabel("ω/\pi (rad/s)    Fs=300Hz");
ylabel("X(ω)");


%===================使用DTFT 绘制 幅频特性曲线 Fs=200======================

Omega = [0:0.01:1000];  % 模拟频率
%omega = Omega/Fs3;   % 计算为数字角频率
xn1_dtft = dtft(xn3, omega);

subplot(428)
plot(omega,xn1_dtft);   % 利用模拟角频率进行绘制
xlabel("ω/\pi (rad/s)    Fs=200Hz");
ylabel("X(ω)");


