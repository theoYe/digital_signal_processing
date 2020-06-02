
omega = [0:0.01:4]
%===================ʹ��DTFT ���� ��Ƶ�������� Fs=1000======================
%Omega = [0:0.01:1000];  % ��һ��ģ���Ƶ��
%omega = Omega/Fs1;   % ����Ϊ���ֽ�Ƶ��

xn1_dtft = dtft(xn1, omega);

subplot(424)
plot(omega,xn1_dtft);   % ����ģ���Ƶ�ʽ��л���

xlabel("��/\pi (rad/s)   Fs=1000Hz");
ylabel("X(��)");

%===================ʹ��DTFT ���� ��Ƶ�������� Fs=300======================

Omega = [0:0.01:1000];  % ģ��Ƶ��
%omega = Omega/Fs2;   % ����Ϊ���ֽ�Ƶ��
xn1_dtft = dtft(xn2, omega);

subplot(426)
plot(omega,xn1_dtft);   % ����ģ���Ƶ�ʽ��л���
xlabel("��/\pi (rad/s)    Fs=300Hz");
ylabel("X(��)");


%===================ʹ��DTFT ���� ��Ƶ�������� Fs=200======================

Omega = [0:0.01:1000];  % ģ��Ƶ��
%omega = Omega/Fs3;   % ����Ϊ���ֽ�Ƶ��
xn1_dtft = dtft(xn3, omega);

subplot(428)
plot(omega,xn1_dtft);   % ����ģ���Ƶ�ʽ��л���
xlabel("��/\pi (rad/s)    Fs=200Hz");
ylabel("X(��)");


