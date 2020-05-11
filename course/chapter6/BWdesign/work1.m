Fs = 200; 
fp = 25;  fs = 50;  
% ========确定模拟滤波器指标======
Wp = 2*pi*fp /Fs   % ωpz
Ws = 2*pi*fs/Fs   % ωsz

% ======频率变换======
T = 2;
wp = 2/T*tan(Wp/2)
rp = 3;
ws = 2/T*tan(Ws/2)
rs =40;


% ======获得巴特沃兹低通滤波器阶数和3dB截止频率======

[N, wc] = buttord(wp, ws, rp, rs, 's')
[B, A] = butter(N, wc, 's')   % 获得系统函数
% ======使用双线性变换法获得H(z)======
[Bz, Az] = bilinear(B, A ,1/T) 

fvtool(Bz,Az,'Fs',Fs); % 显示滤波器图像
