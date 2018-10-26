
n = [0:300]; 
x = (0.97.^n).*cos(0.3*pi*n);
y = ((n-2)-(n-4)-(n-2)-(n-4));

subplot(311); stem(n, x);
subplot(312); stem(n, h);


