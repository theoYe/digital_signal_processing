
%=======定义x6(t) =======
subplot(221)
x6t = @(t) cos(8*pi*t) + cos(16*pi*t) + cos(20 * pi *t);
N1 = 16; N2 = 32; N3 = 64;  % N的三种情况
fplot(x6t , [0, 0.5])  % 两个周期

%=======对x6(t)进行一个周期的等间隔采样 =======
Fs = 64;
x6n = sample_fun(x6t,1/2*Fs,64 );
w = [0:0.01: 2]
plot(w, dtft(x6n ,w ));

%=======x6n1 N1 = 16 =======
subplot(222)
y6n1 =  fft(x6n, N1) ; % x6n N1 = 16

w6n1 = 2*(0:length(y6n1) - 1)/N1;
stem(w6n1, abs(y6n1))
xlabel("\omega/\pi rad/s");
ylabel("X_6(j\omega)")
title("x6n 16点FFT")
%=======x6n2 N1 = 32 =======
subplot(223)

y6n2 =  fft(x6n, N2) ; % x6n N2 = 32

w6n2 = 2*(0:length(y6n2) - 1)/N2;
stem(w6n2, abs(y6n2))
xlabel("\omega/\pi rad/s");
ylabel("X_6(j\omega)")
title("x6n 32点FFT")

%=======x6n3 N1 = 64 =======
subplot(224)
y6n3 =  fft(x6n, N3) ; % x6n N3 = 64
w6n3 = 2*(0:length(y6n3) - 1)/N3;
stem(w6n3, abs(y6n3))
xlabel("\omega/\pi rad/s");
ylabel("X_6(j\omega)")
title("x6n 64点FFT")

%=======x6n4 N1 = 128 =======
subplot(221)
y6n4 =  fft(x6n, 128) ; % x6n N3 = 64
w6n4 = 2*(0:length(y6n4) - 1)/128;
stem(w6n4, abs(y6n4))
xlabel("\omega/\pi rad/s");
ylabel("X_6(j\omega)")
title("x6n 64点FFT")