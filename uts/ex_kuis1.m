x1=rand(1,101);
x2=randn(1,101)*sqrt(10);
n = [0:100];
x=x1+x2;
%x=sigadd(x1,n,x2,n);
[y1,n1] = sigshift(x,n,1);
[y2,n2] = sigshift(x,n,2);
[y3,n3] = sigadd(2*y1,n1,-y2,n2);
[y4,n4] = sigadd(y3,n3,x,n);
stem(n4,y4)

% x1=rand(1,101);
% x2=randn(1,101)*sqrt(10);
% n=[0:100];
% x=x1+x2;
% x3=2.^x;
% stem(n,x3);

%NOMOR 2
% n=0:49;
% x=((0.8).^n).*stepseq(5,0,49);
% subplot(3,1,1)
% stem(n,x)
% subplot(3,1,2)
% stem(n,((0.8).^n).*stepseq(0,0,49))
% subplot(3,1,3)
% stem(n,stepseq(5,0,49))

% x=impseq(5,-5,10);
% n=-5:10
% stem(n,x)