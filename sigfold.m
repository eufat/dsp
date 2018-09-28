function [y,n] = sigshift(x, m, k)

y = fliplr(x);
n = -fliplr(n);