% 
% �������� DTFT
% 
function Xw = dtft(xn, w)
% xn : ��������
% w : ����Ľ�Ƶ��
N = length(xn);
Xw= abs( sum(xn'.*exp(-i*(0:N-1)'*w)) );


