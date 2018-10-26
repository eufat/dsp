n = [0:40]; alpha = 20; wc = 0.5*pi;

fc = wc/(2*pi); 
h = 2*fc*sinc(2*fc*(n-alpha));

Hs = stem(n, h); axis([-2 42 -0.2 0.6]);
xlabel('n'); ylabel('h(n)'); title('Impulse Response h(n)');