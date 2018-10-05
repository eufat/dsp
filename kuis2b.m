x = [2,4,-3,1,-5,4,7,2,4,-3,1,-5,4,7,2,4,-3,1,-5,4,7];
n = [-10:10];

x1 = 2*exp(0.5*n);
[x2, n2] = sigmult(x1, n, x, n);

x3 = cos(0.1*pi*n);
[x4, n4] = sigshift(x, n, -2);
[x5, n5] = sigmult(x3, n, x4, n4);

[xres, nres] = sigadd(x2, n2, x4, n4);

stem(nres, xres)