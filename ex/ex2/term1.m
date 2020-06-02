
% ===============序列定义==================
x1n = ones(1, 4);
x2n = [0,1,2,3,4,3,2,1];
x3n = [4,3,2,1,1,2,3,4];
% ===============N1, N2两种情况==================
N1 = 8;
N2 = 16;

% ===============绘制x1n幅频特性曲线==================
subplot(331)  % 绘制DTFT幅频特性曲线
w = [0:0.01:2];  % 模拟频率
xn1_dtft = dtft(x1n, w);
plot(w, xn1_dtft);
xlabel("w/\pi  rad/s");
ylabel("X(j\omega)")

% ===============绘制x1n 8 点FFT幅频特性曲线==================
subplot(334)
y1n1 =  fft(x1n, N1) ; % x1n N1 = 8


y1n1_dtft = dtft(y1n1, w);
w1n1 = 2*(0:length(y1n1) - 1)/N1;
stem(w1n1, abs(y1n1))
xlim([0 2])
xlabel("w/\pi  rad/s");
ylabel("X_1(j\omega)")
title("x1n 8点FFT")
% ===============绘制x1n 16 点FFT幅频特性曲线==================

subplot(337) 
y1n2 =  fft(x1n, N2) ; % x1n N2 = 16
y1n2_dtft = dtft(y1n2, w);
w1n2 = 2*(0:length(y1n2) - 1)/N2;
stem(w1n2, abs(y1n2))
xlabel("w/\pi  rad/s");
ylabel("X_1(j\omega)")
title("x1n 16点FFT")
% ===============绘制x2n幅频特性曲线==================
subplot(332)
w = [0:0.01:2];  % 模拟频率
xn2_dtft = dtft(x2n, w);
plot(w, xn2_dtft);
xlabel("w/\pi  rad/s");
ylabel("X(j\omega)")

% ===============绘制x2n 8 点FFT幅频特性曲线==================
y2n1 =  fft(x2n, N1) ; % x2n N1 = 8
subplot(335)
y2n1_dtft = dtft(y2n1, w);
w2n1 = 2*(0:length(y2n1) - 1)/N1;
stem(w2n1, abs(y2n1))
xlabel("w/\pi  rad/s");
ylabel("X_2(j\omega)")
title("x2n 8点FFT")
xlim([0 2])
% ===============绘制x2n 16 点FFT幅频特性曲线==================
subplot(338)
y2n2 =  fft(x2n, N2) ; % x2n N2 = 16
y2n2_dtft = dtft(y2n2, w);
w2n2 = 2*(0:length(y2n2) - 1)/N2;
stem(w2n2, abs(y2n2))
xlabel("w/\pi  rad/s");
ylabel("X_2(j\omega)")
title("x2n 16点FFT")


% ===============绘制x3n幅频特性曲线==================
subplot(333)
w = [0:0.01:2];  % 模拟频率
xn3_dtft = dtft(x3n, w);
plot(w, xn3_dtft);
xlabel("w/\pi  rad/s");
ylabel("X_3(j\omega)")

% ===============绘制x3n 8 点FFT幅频特性曲线==================

y3n1 =  fft(x3n, N1) ; % x3n N1 = 8
subplot(336)
y3n1_dtft = dtft(y3n1, w);
w3n1 = 2*(0:length(y3n1) - 1)/N1;
stem(w3n1, abs(y3n1))
xlabel("w/\pi  rad/s");
ylabel("X_3(j\omega)")
title("x3n 8点FFT")
xlim([0 2])
% ===============绘制x3n 16 点FFT幅频特性曲线==================
subplot(339)
y3n2 =  fft(x3n, N2) ; % x3n N2 = 16
y3n2_dtft = dtft(y3n2, w);
w3n2 = 2*(0:length(y3n2) - 1)/N2;
stem(w3n2, abs(y3n2))
xlabel("w/\pi  rad/s");
ylabel("X_3(j\omega)")
title("x3n 16点FFT")


