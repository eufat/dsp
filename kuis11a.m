n = [-5:15];
x = (10.*stepseq(0,-5,15)) - (5.*stepseq(5,-5,15)) - (10.*stepseq(10,-5,15)) + (5.*stepseq(15,-5,15));

stem(n, x) 