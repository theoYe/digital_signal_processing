%========˫���Ա任������б�ѩ���ͨIIR�˲���==========
fp = 300;  fs = 200; Fs = 1000;
rp = 1; rs = 20;
wpz = 2*fp/Fs; wsz = 2*fs/Fs;  % ��һ��Ƶ��

[N1 , wp1] = cheb1ord(wpz,wsz, rp,rs); 
[Bz1, Az2] = cheby1(N1, rp, wp1,'high'); % ��Ƹ�ͨ�˲��� 

fvtool(Bz1, Az2);  % �����˲�����Ƶ��Ƶ����