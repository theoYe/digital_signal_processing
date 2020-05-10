
%===================使用DTFT 绘制 幅频特性曲线 Fs=1000======================

xn1_fft = fft(xn1);
subplot(424)
plot(abs(xn1_fft));

xlabel("n    Fs=1000Hz");
ylabel("X(k)")

%===================使用fft得到幅度响应 Fs=300======================

xn2_fft = fft(xn2);

subplot(426)
plot(abs(xn2_fft));
xlabel("n    Fs=300Hz");
ylabel("X(k)")


%===================使用fft得到幅度响应 Fs=200======================

xn3_fft = fft(xn3);

subplot(428)
plot(abs(xn3_fft));
xlabel("n    Fs=200Hz");
ylabel("X(k)")