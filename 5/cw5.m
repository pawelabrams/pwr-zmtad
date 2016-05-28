g1 = [1014.0 684.0 810.0 990.0 840.0 978.0 1002.0 1110.0];
g2 = [864.0 636.0 638.0 708.0 786.0 600.0 1320.0 750.0 594.0 750.0];

m1 = median(g1)
m2 = median(g2)

disp('H = czas ?w nie zale?y od sprawno?ci (ufnosc: 1 - alpha = 0.9)');
[p, h, stats] = ranksum(g1, g2,'alpha',0.1)
