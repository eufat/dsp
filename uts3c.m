b = [2 ,1]; a = [1, -0.9]; n = [-20:100];
h = impz(b,a,n);
sum(abs(h))