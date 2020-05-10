
wp = 2*pi*5000;
ws = 2 * pi * 12000;
Rp =2;
As = 30;  
[N, wc] = buttord(wp, ws, Rp, As, 's')   % 计算阶数和3dB截止频率
[B, A] = butter(N, wc , 's')   % 计算滤波器系统函数分子分母多项式系数

k = 0:511; fk = 0:14000/512:14000; 
wk = 2* pi*fk;
Hk = freqs(B, A , wk);
subplot(2, 2, 1)
plot(fk/1000, 20 * log10(abs(Hk)));
grid on;

xlabel('频率(kHz)'); ylabel("幅度(dB)")
axis([0, 14, -40, 5])


