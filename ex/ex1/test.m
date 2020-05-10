close;
clear all;
%===================定义x(t)======================
A = 444.128;
alpha = 50*sqrt(2)*pi;
Omega_0 = 50*sqrt(2)*pi;
xa = @(t) A.*exp(-alpha.*t).*sin(Omega_0.*t);
%===================绘制x(t)时域图======================
subplot(221);
fplot(@(t) xa(t), [0, 0.04]);

%tp = 0.0001; % 间隔
%tmax = 0.05;  % 最大绘制点2s
%tm =  [0:tp:tmax]      % 绘制范围, 从0开始, 省略u(t)
%x_at = A.*exp(-alpha.*tm).*sin(Omega_0.*tm)  % 

%plot(tm , x_at);


xlabel("t");
ylabel("x(t)")



%===================绘制幅度响应图======================
subplot(222);
b = A*Omega_0   % 分子系数
a = [1 2*alpha (alpha^2+Omega_0^2)] % 分母系数 
w = -1000*pi:0.1*pi:1000*pi;  % 角频率点位置 
[h, wout] = freqs(b,a,w);    % 调用freqs 得到幅度响应   
f = wout/(2*pi);    % 转化为频率
plot(f,abs(h));  % 绘制图形
xlabel("f (Hz)")
ylabel("|X(jw)|")



%===================采样 t=nT ======================
n = 63;  % 采样63点
syms  A w a t;  % 定义符号
x_at = A*exp(-a.*t)*cos(w*t)*heaviside(t);  %  定义函数


%===================绘制幅度响应图======================
%subplot(223);
%n = tmax/tp;   % 采样点数
%Xaf = fft(x_at, n);
%plot([0:n-1],abs(Xaf));


