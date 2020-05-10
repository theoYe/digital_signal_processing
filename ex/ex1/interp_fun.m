function ya = interp_fun(xn, T, t)
% xn : 采样序列
% T : 采样周期
% t : 得到的时间


s_n = 0:length(xn)-1;
r =  xn.* ( sin( pi.*(t-s_n.*T)./T)./ ( pi.*(t-s_n.*T)./T ) );
ya = sum(r);

