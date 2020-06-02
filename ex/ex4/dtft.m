% =======================
% �������� DTFT
% =====================
function Xw = dtft(xn, w)
% xn : ��������   scalar | vector
% w : ����Ľ�Ƶ��  scalar | vector
Xw= sum(xn'.*exp(-1i*(0:length(xn)-1)'*w)) ;  % N = length(xn);
% Xw= sum(xn'.*exp(-1i*(0:length(xn)-1)'*w)) ;  % N = length(xn);

