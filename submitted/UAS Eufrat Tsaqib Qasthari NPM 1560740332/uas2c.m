b = [0.4,-0.4]; a=[1,0.2];
w = [0:1:500]*pi/500; H = freqz(b,a,w);
magH = abs(H); phaH = angle(H);
subplot(2,1,1); plot(w/pi,magH); grid
xlabel('frequency in pi units'); ylabel('Magnitude')
title('Magnitude Response')
subplot(2,1,2); plot(w/pi,phaH/pi); grid
xlabel('frequency in pi units'); ylabel('Phase in pi units')
title('Phase Response')