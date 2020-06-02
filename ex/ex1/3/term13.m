h1n = ones(1,10);  % h1(n)  1:10
h2n = [0,2.5,2.5,3];  % h2(2)

x1n = ones(1, 8);

y1n = conv(h1n , x1n);
y2n = conv(h2n, x1n);
subplot(211)
stem(0:length(y1n)-1,y1n);
xlabel("n")
ylabel("h_1(n)")
subplot(212)
stem(0:length(y2n)-1,y2n);

xlabel("n")
ylabel("h_2(n)")