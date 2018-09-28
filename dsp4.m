%x[n] = 3*cos(0.1*pi*n+pi/3) + 2*sin(0.5*pi*n)

n = 0:10;
x = 3*cos(0.1*pi*n+pi/3)+2*sin(0.5*pi*n);

stem(n,x);

n = 0:0.1:10;
x = 3*cos(0.1*pi*n+pi/3)+2*sin(0.5*pi*n);

hold on;
plot(n,x);
title('Sequence');
xlabel('n');
ylabel('x(n)');
hold off;