%========双线性变换法设计切比雪夫高通IIR滤波器==========
fp = 300;  fs = 200; Fs = 1000;
rp = 1; rs = 20;
wpz = 2*fp/Fs; wsz = 2*fs/Fs;  % 归一化频率

[N1 , wp1] = cheb1ord(wpz,wsz, rp,rs); 
[Bz1, Az2] = cheby1(N1, rp, wp1,'high'); % 设计高通滤波器 

fvtool(Bz1, Az2);  % 绘制滤波器幅频相频曲线