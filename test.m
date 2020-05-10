
Omega_s =  10*2*pi*1000;
Omega_p =  20*2*pi*1000;
alpha_s = 15;  % ��s dB
alpha_p = 3;  % ��s dB
lambda_sp = Omega_s/Omega_p
ksp = sqrt((10^(alpha_s.*0.1)-1)/(10^(alpha_p.*0.1)-1))
N = floor(log10(ksp)/log10(lambda_sp))+1
