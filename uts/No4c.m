clc; close all; 
n = [0:40]; alpha = 20; wc = 0.5*pi;

fc = wc/(2*pi); 
h = 2*fc*sinc(2*fc*(n-alpha));

K = 500; w = [-K:K]*pi/K; 
H = h*exp(-j*n'*w);
magH = abs(H); phaH = angle(H);

H_d = zeros(1,length(w)); H_d(K/2+1:3*K/2+1) = exp(-j*alpha*w(K/2+1:3*K/2+1));
magH_d = abs(H_d); phaH_d = angle(H_d);

subplot(2,2,1); plot(w/pi,magH); grid
xlabel("Frequency in Pi Units"); title("Magnitude Part of H(e^{j\omega})"); ylabel("|H|")
subplot(2,2,3); plot(w/pi,phaH); grid
xlabel("Frequency in Pi Units"); title("Phase Part of H(e^{j\omega})"); ylabel("Degrees")
subplot(2,2,2); plot(w/pi,magH_d); grid
xlabel("Frequency in Pi Units"); title("Magnitude Part of H_d(e^{j\omega})"); ylabel("|H_d|")
subplot(2,2,4); plot(w/pi,phaH_d); grid
xlabel("Frequency in Pi Units"); title("Phase Part of H_d(e^{j\omega})"); ylabel("Degrees")