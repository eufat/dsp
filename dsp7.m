n = [-5:5];
x = 2*impseq(-2, -5,5) - impseq(4,-5,5);

stem(n,x);
xlabel('n');
ylabel('x(n)');