
%================(1)=================
A=[1,-0.9];B=[0.05,0.05];  %ϵͳ��ַ���ϵ��
x1n=[1 1 1 1 1 1 1 1 zeros(1,50)];  %�����ź�x1(n)=R8(n)
x2n=ones(1,100);    %�����ź�x2(n)=u(n)

y1n=filter(B,A,x1n);    %����Ӧy1(n)
y2n=filter(B,A,x2n);    %����Ӧy2(n)

n1 = 0 : length(y1n)-1;
subplot(1,2,1);
stem(y1n);
xlabel("n");
ylabel("y1n");
n2 = 0 : length(y2n)-1;
subplot(1,2,2);
stem(y2n);
xlabel("n");
xlabel("y2n");
