function Xw = dtft(xn, w)
% xn : ��������
% w : ����Ľ�Ƶ��

Xw= abs(sum(xn'.*exp(-i*(0:n-1)'*w)))


