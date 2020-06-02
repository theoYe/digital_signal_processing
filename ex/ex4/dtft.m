% =======================
% 计算序列 DTFT
% =====================
function Xw = dtft(xn, w)
% xn : 采样序列   scalar | vector
% w : 想求的角频率  scalar | vector
Xw= sum(xn'.*exp(-1i*(0:length(xn)-1)'*w)) ;  % N = length(xn);
% Xw= sum(xn'.*exp(-1i*(0:length(xn)-1)'*w)) ;  % N = length(xn);

