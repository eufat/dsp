b = [2 ,1]; a = [1, -0.9]; n = [-20:100];
x = (n-0) >= 0; % x = stepseq(0,-10,120);
s = filter(b,a,x);
stem(n,s);
title('Step Response');
xlabel('n'); ylabel('s(n)')