Fs = 200; 
fp = 25;  fs = 50;  
% ========ȷ��ģ���˲���ָ��======
Wp = 2*pi*fp /Fs   % ��pz
Ws = 2*pi*fs/Fs   % ��sz

% ======Ƶ�ʱ任======
T = 2;
wp = 2/T*tan(Wp/2)
rp = 3;
ws = 2/T*tan(Ws/2)
rs =40;


% ======��ð������ȵ�ͨ�˲���������3dB��ֹƵ��======

[N, wc] = buttord(wp, ws, rp, rs, 's')
[B, A] = butter(N, wc, 's')   % ���ϵͳ����
% ======ʹ��˫���Ա任�����H(z)======
[Bz, Az] = bilinear(B, A ,1/T) 

fvtool(Bz,Az,'Fs',Fs); % ��ʾ�˲���ͼ��
