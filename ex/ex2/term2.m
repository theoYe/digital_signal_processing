
% ===========定义x4(n),x5(n)==============
N1 = 8;
N2 = 16;
n1 = 0:N1-1;
n2 = 0:N2-1;
x4n1 = cos(pi/4*n1);
x4n2 = cos(pi/4*n2);
x5n1 = cos(pi/4*n1) + cos(pi/8*n1);
x5n2 = cos(pi/4*n2) + cos(pi/8*n2);

subplot(325)  % 绘制x4 DTFT幅频特性曲线
w = [0:0.01:2];  % 模拟频率
x4n1_dtft = dtft(x4n1, w);
plot(w, x4n1_dtft);
xlabel("w/\pi  rad/s");
ylabel("X(j\omega)")


subplot(326)  % 绘制x4 DTFT幅频特性曲线
w = [0:0.01:2];  % 模拟频率
x5n1_dtft = dtft(x5n1, w);
plot(w, x5n1_dtft);
xlabel("w/\pi  rad/s");
ylabel("X(j\omega)")
%================x4(n)================
y4n1 =  fft(x4n1, N1) ; % x1n N1 = 8
subplot(321)
w4n1 = 2*(0:length(y4n1) - 1)/N1;
stem(w4n1, abs(y4n1))
xlabel("\omega/\pi rad/s");
title("x4n 8点FFT")
ylabel("X_4(j\omega)")

subplot(322)
y4n2 =  fft(x4n2, N2) ; % x1n N1 = 8
w4n2 = 2*(0:length(y4n2) - 1)/N2;
stem(w4n2, abs(y4n2))
xlabel("\omega/\pi rad/s");
ylabel("X_4(j\omega)")

title("x4n 16点FFT")
%================x5(n)================
y5n1 =  fft(x5n1, N1) ; % x1n N1 = 8
subplot(323)

w5n1 = 2*(0:length(y5n1) - 1)/N1;
stem(w5n1, abs(y5n1))
xlabel("\omega/\pi rad/s");
ylabel("X_5j\omega)")
title("x5n 8点FFT")


y5n2 =  fft(x5n2, N2) ; % x1n N1 = 8
subplot(324)
w5n2 = 2*(0:length(y5n2) - 1)/N2;
stem(w5n2, abs(y5n2))
xlabel("\omega/\pi rad/s");
ylabel("X_5(j\omega)")
title("x5n 16点FFT")