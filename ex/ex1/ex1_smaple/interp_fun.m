function ya = interp_fun(xn, T, t)
% xn : ��������
% T : ��������
% t : �õ���ʱ��


s_n = 0:length(xn)-1;
r =  xn.* ( sin( pi.*(t-s_n.*T)./T)./ ( pi.*(t-s_n.*T)./T ) );
ya = sum(r);

