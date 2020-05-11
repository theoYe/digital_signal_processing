% 
% 计算序列 DTFT
% 
function Xw = dtft(xn, w)
% xn : 采样序列
% w : 想求的角频率
N = length(xn);
Xw= abs( sum(xn'.*exp(-i*(0:N-1)'*w)) );


