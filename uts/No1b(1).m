clc; close all;
n = 0:100; x1 = rand(1,length(n)); x2 = sqrt(10)*randn(1,length(n));
y1 = 2.^x1; y2 = 2.^x2;

xs = x1 + x2;
ys = 2.^xs;

diff = sum(abs(ys - (y1 + y2)));
if (diff < 1e-5)
    disp('Sistem 1 Linear');
else
    disp('Sistem 1 tidak Linear');
end

n = 0:100; x1 = rand(1,length(n)); x2 = sqrt(10)*randn(1,length(n));
[x11, nx11] = sigshift(x1, n, 1); [x111, nx111] = sigshift(x1, n, 2);
[y1, ny1] = sigadd(x1, n, 2*x11, nx11);
[y1, ny1] = sigadd(y1, ny1, -x111, nx111);

[x21, nx21] = sigshift(x2, n, 1); [x211, nx211] = sigshift(x2, n, 2);
[y2, ny2] = sigadd(x2, n, 2*x21, nx21);
[y2, ny2] = sigadd(y2, ny2, -x211, nx211);

xs = x1 + x2;
[xs11, nxs11] = sigshift(xs, n, 1); [xs111, nxs111] = sigshift(xs, n, 2);
[ys, nys] = sigadd(xs, n, 2*xs11, nxs11);
[ys, nys] = sigadd(ys, nys, -xs111, nxs111);

diff = sum(abs(ys - (y1 + y2)));
if (diff < 1e-5)
    disp('Sistem 2 Linear');
else
    disp('Sistem 2 tidak Linear');
end