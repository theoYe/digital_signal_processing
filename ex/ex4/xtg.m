function xt=xtg(Fs, N)

T=1/Fs;Tp=N*T;
t=0:T:(N-1)*T;
fc=Fs/10;f0=fc/10;
mt=cos(2*pi*f0*t);
ct=cos(2*pi*fc*t);
xt=mt.*ct;
nt=2*rand(1,N)-1;

fp=150;fs=200;Rp=0.1;As=70;
fb=[fp,fs];m=[0,1];
dev=[10^(-As/20),(10^(Rp/20)-1)/(10^(Rp/20)+1)];
[n,fo,mo,W]=remezord(fb,m,dev,Fs);
hn=remez(n,fo,mo,W);
yt=filter(hn,1,10*nt);

xt=xt+yt;
% fst=fft(xt,N);k=0:N-1;f=k/Tp;
% subplot(3,1,1);
% plot(t,xt);
% grid;xlabel('t/s');ylabel('x(t)');
% axis([0,Tp/5,min(xt),max(xt)]);title('(a)Signal+Noise');
% subplot(3,1,2);
% plot(f,abs(fst)/max(abs(fst)));grid;title('(b)Frequency Spectrum')
% axis([0,Fs/2,0,1.2]);
% xlabel('f/Hz');ylabel('Amptitude');
 
end