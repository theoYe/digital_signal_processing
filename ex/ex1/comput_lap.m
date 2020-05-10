
syms  A w a t;  % 定义符号
x_at = A*exp(-a.*t)*cos(w*t)*heaviside(t);  %  定义函数
laplace(x_at)  % 求解