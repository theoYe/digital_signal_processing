

%================ªÊ÷∆∑˘∂»œÏ”¶Õº======================


b = A*Omega_0
a = [1 2*alpha (alpha^2+Omega_0^2)]
w = 0:0.1*pi:1000*pi;
[h, wout] = freqs(b,a,w) ;
f = wout/(2*pi);
plot(f,abs(h));
xlabel("f (Hz)")
ylabel("|X(jw)|")