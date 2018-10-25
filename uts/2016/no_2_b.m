
n = [-20:30]; x = n-(n-5); h = (n-2)-(n-8)-(n-11)-(n-17);
Hf_1 = figure; set(Hf_1,'NumberTitle','off','Name','2b');

% (a) Plot of the analytical convolution
y1 = ((n-3)-(n-9)-(n-12)-(n-18))
subplot(1,3,1); Hs1 = stem(n,y1,'filled'); set(Hs1,'markersize',2);
title('Analytical'); xlabel('n'); ylabel('y(n)');

% (b) Plot using the conv function and truncated sequences
x2 = x(1:26); h2 = h(1:26); y2 = conv(h2,x2)
subplot(1,3,2); Hs2 = stem(n,y2,'filled'); set(Hs2,'markersize',2);
title('Using conv function'); xlabel('n'); ylabel('y(n)');

% (c) Plot of the convolution using the filter function
y3 = filter([1],[2,8,11,17],x)
subplot(1,3,3); Hs3 = stem(n,y3,'filled'); set(Hs3,'markersize',2);
title('Using filter function'); xlabel('n'); ylabel('y(n)');



