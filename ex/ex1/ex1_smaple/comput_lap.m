
syms  A w a t;  % �������
x_at = A*exp(-a.*t)*cos(w*t)*heaviside(t);  %  ���庯��
laplace(x_at)  % ���