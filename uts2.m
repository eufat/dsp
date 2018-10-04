n = [0:50];
x = ((0.8).^n) .* stepseq(0, 0, 50);
xx = x .* x

stem(n,xx)
