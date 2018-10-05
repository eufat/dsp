[x1, n] = stepseq(0, 0, 40);
[x2, n] = stepseq(10, 0, 40);

x = x1 - x2;
h = (0.9.^n).*stepseq(0, 0, 40);
y = conv(x, h);

subplot(311); stem(n, x);
subplot(312); stem(n, h);
subplot(313); stem(n, y(1:length(n)));