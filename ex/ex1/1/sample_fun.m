function xn = sample_fun(xa,n,Fs)
% xa : ����ģ���źź���
% n : ��������
% Fs : ����Ƶ��
% xn: ���ز������

T = 1/Fs;  % ��������
ts = (0:n-1) * T;     % ������
tmax = T*n-1;  % ������ʱ��λ��
xn = xa(ts);    %�õ��������


