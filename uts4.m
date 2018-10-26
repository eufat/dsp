
b = [0, 5, 0, 4.5]; a = [1, -1.7, 0, 0.72]; n = [0:300]; 
x = (0.97.^n) .* cos(0.3*pi*n);
h = impz(b,a,n);
y = conv(x, h);

subplot(311); stem(n, x);
subplot(312); stem(n, h);
subplot(313); stem(n, y(1:length(n)));

