Lfft = 256;  % 2的次幂的长度
f = (0:Lfft-1)/Lfft;  % Normalized Freq;
n0 = 5; n1 =5 ; yt = ones(n1 + n0 + 1,1);
Yf = fft(yt , Lfft);  % DFT of y(n)
Xf = Yf .* exp(2*j*pi*5*f');
subplot(211);  plot(real(Xf)); grid

subplot(212); plot(imag(Xf)); grid