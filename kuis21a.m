b = [3 ,2]; a = [1, -1, 0.24]; n = [-20:100];
h = impz(b,a,n);

stem(n,h);
title('Impulse Response');
xlabel('n'); ylabel('h(n)')