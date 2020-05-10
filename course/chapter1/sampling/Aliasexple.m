F0 = 350;  % x(t) Frequency x(t) = cos(2*pi*F0*t)

Fs = 800;    % Sampling Frequency
Te = 1/Fs;    % Sampling Time Period
 F1 = Fs-F0;    % 

tmax = .005; mtm = [0:tmax/100:tmax];
xt = cos(2*pi*F0*mtm);

yt = cos(2*pi*F1*mtm);
plot(mtm, [xt', yt']); grid on; hold on;
n1max = floor(tmax/Te);

mtm = [0:n1max] * Te; % Sampling times

xen0 = cos(2*pi*F0*mtm);

plot(mtm, xen0, 'o');

xen1 = cos(2*pi*F1*mtm);
plot(mtm, xen1, 'x'); hold off;



