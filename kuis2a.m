x = [2,4,-3,1,-5,4,7];
n = [1:7];

[x1, n1] = sigshift(x, n, -3);
[x2, n2] = sigshift(x, n, 2);
[x3, n3] = sigmult(x1, n1, x2, n2);

[x4, n4] = sigfold(x, n);
[x5, n5] = sigshift(x4, n4, 1);
[x6, n6] = sigshift(x, n, -1);
[x7, n7] = sigmult(x5, n5, x6, n6);

[xres, nres] = sigadd(x3, n3, x7, n7);

stem(nres, xres)