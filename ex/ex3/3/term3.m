xn = [-4, -2, 0, -4,-6, -4,-2,-4,-6,-6,-4,-4-6-6,-2,6,12,8,0,-16,-38,-60,84,-90,-66,-32,-4,-2,-4,-8,12,12,10,6,6,6,4,0,0,0, 0,0,-2,-4,0,0,0,-2,-2,0,0,-2,-2,-2,-2,0]
subplot(2,2,1);
stem(xn);
xlabel("xn");

subplot(2,2,2);
wx = [0:0.01:8*pi];
plot(wx,dtft(xn, wx));
% ·Å²»Í¬
xlabel("X(w)");

subplot(2,2,3);
yn = filter(Bz, Az, xn);
stem(yn)

xlabel("yn");

subplot(2,2,4);
plot(wx,dtft(yn, wx));
xlabel("Y(w)");