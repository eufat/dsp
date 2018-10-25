clc; close all;
n = 0:49; x = ((0.8).^n).*(stepseq(0, 0, 49));

subplot(2, 1, 1); 
stem(n, x); xlabel('nx'); ylabel('x'); title('x(n)')

subplot(2, 1, 2); 
[y, ny] = conv_m(x, n, x, n);
stem(ny, y); xlabel('ny'); ylabel('y'); title('x(n)*x(n)')

