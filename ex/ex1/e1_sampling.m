close;
clear all;
figure(1);

%===================����x(t)======================
A = 444.128;
alpha = 50*sqrt(2)*pi;
Omega_0 = 50*sqrt(2)*pi;
xa = @(t) A.*exp(-alpha.*t).*sin(Omega_0.*t);

%===================����x(t)ʱ��ͼ======================
subplot(421);
fplot( @(t) xa(t), [0, 0.04]);

xlabel("t");
ylabel("x(t)")



%===================���Ʒ�����Ӧͼ======================
subplot(422);
b = A*Omega_0   % ����ϵ��
a = [1 2*alpha (alpha^2+Omega_0^2)] % ��ĸϵ�� 
w = 0:0.1*pi:1000*pi;  % ��Ƶ�ʵ�λ�� 

[h, wout] = freqs(b,a,w);    % ����freqs �õ�������Ӧ   

f = wout/(2*pi);    % ת��ΪƵ��
plot(f,abs(h));  % ����ͼ��
xlabel("f (Hz)")
ylabel("|X(jw)|")



%===================��Fs=1000���� t=nT ======================
n = 64;  % ����64��
Fs1 = 1000;   % 1000  300 200 Hz
xn1 = sample_fun(xa, n, Fs1);

subplot(423)
stem(xn1);
xlabel("n    Fs=300Hz");
ylabel("X(nT)")

%===================��Fs=300���� t=nT======================
n = 64;  % ����64��
Fs2 = 300;   % 1000  300 200 Hz
xn2 = sample_fun(xa, n, Fs2);

subplot(425)
stem(xn2);
xlabel("n    Fs=300Hz");
ylabel("X(nT)")


%===================��Fs=200���� t=nT ========================
n = 64;  % ����64��
Fs3 = 200;   % 1000  300 200 Hz
xn3 = sample_fun(xa, n, Fs3);

subplot(427)
stem(xn3);
xlabel("n    Fs=300Hz");
ylabel("X(nT)")


fft_plot;  % ʹ��fft�ķ�ʽ�ָ�Ƶ��ͼ





