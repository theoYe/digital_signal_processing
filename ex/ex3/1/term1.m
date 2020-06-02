%=======巴特沃斯滤波器设计(脉冲响应不变法)=======
T = 1;
clf;
wp = 0.2*pi/T;ws = 0.3*pi/T;% 确定模拟滤波器指标
rp = 1;  rs = 15;
[N, wc] = buttord(wp, ws, rp, rs, 's');  % 计算模拟滤波器阶数N与3dB截止频率
[B, A] = butter(N, wc,'s'); % 获得系统函数参数

[Bz, Az] = impinvar(B, A, 1/T); % 脉冲响应不变法转换为数字滤波器

%=======绘制关键点衰减值=======
hfig = fvtool(Bz, Az)


%========双线性变换法设计低通滤波器=========

rp = 1;  rs = 15;
wsz = 0.3;  wpz = 0.2;   % 归一化Π参数

[N, wc] = buttord(wpz, wsz, rp,rs);
[Bz, Az] = butter(N, wc,'low');

%=======绘制关键点衰减值=======
addfilter(hfig,Bz,Az);
legend(hfig, '脉冲响应不变法', '双线性变换法');