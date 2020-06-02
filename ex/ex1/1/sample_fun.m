function xn = sample_fun(xa,n,Fs)
% xa : 采样模拟信号函数
% n : 采样点数
% Fs : 采样频率
% xn: 返回采样结果

T = 1/Fs;  % 采样周期
ts = (0:n-1) * T;     % 采样点
tmax = T*n-1;  % 最大采样时间位置
xn = xa(ts);    %得到采样结果


