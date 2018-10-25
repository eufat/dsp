clc; close all;
nx = [0:100]; x = ((nx+1).^2).*((0.8).^nx).*(stepseq(0, 0, 100));

a = [1, -0.95, -0.035, 0.462, -0.351]; b = [0.5, -0.75, -1.2, 0.4, -1.2] ; 
h = impz(b,a,nx);
[y, ny] = conv_m(x, nx, h, nx);

subplot(2, 1, 1); 
stem(nx, x); xlabel('nx'); ylabel('x'); title('Input')

subplot(2, 1, 2); 
stem(ny, y); xlabel('ny'); ylabel('y'); title('Output')