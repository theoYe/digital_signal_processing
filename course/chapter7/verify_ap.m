
h1n = [1.5 2 3 3 2 1.5];
h2n = [3 -2 1 0 -1 2  -3];

subplot(221)
w = [0 :0.01: 2*pi]
plot(0:length(w)-1 , abs(dtft( h1n,w ) ));
subplot(222)
plot(0:length(w)-1 , abs(dtft( h2n ,w) ));

subplot(223)
plot(0:length(w)-1 , angle(dtft( h1n ,w)) );
subplot(224)
plot(0:length(w)-1 , angle(dtft( h2n,w )) );

a = angle(dtft( h2n,w ));


