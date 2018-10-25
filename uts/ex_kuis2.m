%Nomor 3

n = 0:100;
x = ((n+1).^2).*((0.8).^n).*stepseq(0,0,100);
[y1,n1] = sigshift(x,n,1);
[y2,n2] = sigshift(x,n,2);
[y3,n3] = sigshift(x,n,3);
[y4,n4] = sigshift(x,n,4);

[x1,n1] = sigadd(0.5*x,n,-0.75*y1,n1);
[x2,n2] = sigadd(-1.2*y2,n2,0.4*y3,n3);
[x3,n3] = sigadd(x1,n1,x2,n2);
[x4,n4] = sigadd(x3,n3,-1.2*y4,n4);

stem(n4,x4)
