function Xw = dtft(xn, w)
% xn : 采样序列
% w : 想求的角频率

Xw= abs(sum(xn'.*exp(-i*(0:n-1)'*w)))


