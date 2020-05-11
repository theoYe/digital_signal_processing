
wp = 2*pi*[200, 400] ; ws = 2*pi*[100 , 600]
[N, wc] = buttord(wp, ws, rp, rs, 's')
[B, A] = butter(N, wc, 's')   % 获得系统函数