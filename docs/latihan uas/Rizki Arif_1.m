clc; close all;
a = [1 -1.7 1.36 -0.576]; 
b = [1]; 

%1a
n = [0:100];
figure;
h = impz(b, a, n);
stem(n, h);
title("Impulse Response");
xlabel("n"); ylabel("h(n)")

%1b
nx = [0:100]; x = ((1/2).^nx)+((-1/2).^nx).*(stepseq(0, 0, 100));
h = impz(b,a,nx);
[y, ny] = conv_m(x, nx, h, nx);
figure;
subplot(2, 1, 1); 
stem(nx, x); xlabel('nx'); ylabel('x'); title('Input')
subplot(2, 1, 2); 
stem(ny, y); xlabel('ny'); ylabel('y'); title('Output')

%1c
[b0, Bcas, Acas] = dir2cas(b, a)
[C, Bpar, Apar] = dir2par(b, a)

%1d
m = 0:length(b)-1; l = 0:length(a)-1; 
K = 500; k = 0:1:K; 
w = pi*k/K; 
num = b * exp(-j*m'*w); 
den = a * exp(-j*l'*w); 
H = num ./ den; 
magH = abs(H); angH = angle(H); 
figure;
subplot(2,1,1); plot(w/pi,magH); grid; %axis([0,1,-2,2])
xlabel("frequency in pi units"); ylabel("|H|");
title("Magnitude Response");
subplot(2,1,2); plot(w/pi,angH/pi); grid; %axis([0,1,-2,2])
xlabel("frequency in pi units"); ylabel("Phase in pi Radians");
title("Phase Response");