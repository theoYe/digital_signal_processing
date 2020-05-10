close;
clear all;
%===================����x(t)======================
A = 444.128;
alpha = 50*sqrt(2)*pi;
Omega_0 = 50*sqrt(2)*pi;
xa = @(t) A.*exp(-alpha.*t).*sin(Omega_0.*t);
%===================����x(t)ʱ��ͼ======================
subplot(221);
fplot(@(t) xa(t), [0, 0.04]);

%tp = 0.0001; % ���
%tmax = 0.05;  % �����Ƶ�2s
%tm =  [0:tp:tmax]      % ���Ʒ�Χ, ��0��ʼ, ʡ��u(t)
%x_at = A.*exp(-alpha.*tm).*sin(Omega_0.*tm)  % 

%plot(tm , x_at);


xlabel("t");
ylabel("x(t)")



%===================���Ʒ�����Ӧͼ======================
subplot(222);
b = A*Omega_0   % ����ϵ��
a = [1 2*alpha (alpha^2+Omega_0^2)] % ��ĸϵ�� 
w = -1000*pi:0.1*pi:1000*pi;  % ��Ƶ�ʵ�λ�� 
[h, wout] = freqs(b,a,w);    % ����freqs �õ�������Ӧ   
f = wout/(2*pi);    % ת��ΪƵ��
plot(f,abs(h));  % ����ͼ��
xlabel("f (Hz)")
ylabel("|X(jw)|")



%===================���� t=nT ======================
n = 63;  % ����63��
syms  A w a t;  % �������
x_at = A*exp(-a.*t)*cos(w*t)*heaviside(t);  %  ���庯��


%===================���Ʒ�����Ӧͼ======================
%subplot(223);
%n = tmax/tp;   % ��������
%Xaf = fft(x_at, n);
%plot([0:n-1],abs(Xaf));


