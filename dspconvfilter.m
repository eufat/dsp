b = [1]; a = [1, -0.9];
n = -5:50;
x = stepseq(0,-5,50) - stepseq(10,-5,50);
y1 = filter(b,a,x);
subplot(212);
stem(n,y1);
title('Output Sequence');
xlabel('n'); ylabel('y(n)'); axis([-5,50,-0.5,8]);

[x1,n] = stepseq(0,0,40);
[x2,n] = stepseq(10,0,40);
xn = x1-x2;
h = (0.9.^n).*stepseq(0,0,40);
y2 = conv(xn,h);
%subplot(311); stem(n,x)
%subplot(312); stem(n,h)
subplot(211); stem(n,y2(1:length(n)))
axis([0,40,-0.5,8]);

err = y1(1:40) -y2(1:40);
mean(err);
disp(['Error ' num2str(mean(err))]);