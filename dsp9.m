n = [-10:9];
x = [5,4,3,2,1];

xtilde = x' * ones(1,4);
xtilde = (xtilde(:))';

subplot(1,1,1);
stem(n,xtilde);

xlabel('n');
ylabel('xtilde(n)');