
clc; close all;
b = [3 2]; a = [1 -1 0.24]; [delta,n] = impseq(-20,1,100);
h = filter(b,a,delta)

Hf_1 = figure; set(Hf_1,'NumberTitle','off','Name','1b');
Hs = stem(n,h,'filled'); set(Hs,'markersize',2);
axis([min(n)-5,max(n)+5,min(h)-0.5,max(h)+0.5]);
xlabel('n'); ylabel('h(n)');
title('Impulse response');
