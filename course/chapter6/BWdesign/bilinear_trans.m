
T=1; Fs= 1/T;
wpz = 0.2;
wsz = 0.3;

wp = 2*tan(wpz * pi/2);  rp = 1;
ws = 2*tan(wsz*pi/2); ra = 15;

[N, wc] = buttord(wp, ws, rp, rs,'s');
[B,A] = butter(N, wc, 's');