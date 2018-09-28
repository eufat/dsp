%x[n]=exp[(2+j3)n]

n = 0:10;
x = exp((2+3j)*n);

subplot(211); stem(n,imag(x));
subplot(212); stem(n,real(x));