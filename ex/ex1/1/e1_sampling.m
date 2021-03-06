close;
clear all;
figure(1);

%===================定义x(t)======================
A = 444.128;
alpha = 50*sqrt(2)*pi;
Omega_0 = 50*sqrt(2)*pi;
xa = @(t) A.*exp(-alpha.*t).*sin(Omega_0.*t);

%===================绘制x(t)时域图======================
subplot(421);
fplot( @(t) xa(t), [0, 0.04]);

xlabel("t");
ylabel("x(t)")

%===================绘制幅度响应图======================
subplot(422);
b = A*Omega_0   % 分子系数
a = [1 2*alpha (alpha^2+Omega_0^2)] % 分母系数 
w = 0:0.1*pi:1000*pi;  % 角频率点位置 

[h, wout] = freqs(b,a,w);    % 调用freqs 得到幅度响应   

% f = wout/(2*pi);    % 转化为频率
plot(wout,abs(h));  % 绘制图形
xlabel("\Omega (rad/s)");
ylabel("|X(jw)|");

%===================以Fs=1000采样 t=nT ======================
n = 64;  % 采样64点
Fs1 = 1000;   % 1000  300 200 Hz
xn1 = sample_fun(xa, n, Fs1);

subplot(423)
stem(xn1);
xlabel("n    Fs=1000Hz");
ylabel("X(nT)")

%===================以Fs=300采样 t=nT======================
n = 64;  % 采样64点
Fs2 = 300;   % 1000  300 200 Hz
xn2 = sample_fun(xa, n, Fs2);

subplot(425)
stem(xn2);
xlabel("n    Fs=300Hz");
ylabel("X(nT)")


%===================以Fs=200采样 t=nT ========================
n = 64;  % 采样64点
Fs3 = 200;   % 1000  300 200 Hz
xn3 = sample_fun(xa, n, Fs3);

subplot(427)
stem(xn3);
xlabel("n    Fs=200Hz");
ylabel("X(nT)")


% fft_plot  % 使用fft的方式绘制频率图
dtft_plot;  % 使用dtft的方式绘制频率图






