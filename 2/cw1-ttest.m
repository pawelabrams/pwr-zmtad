x = randn(100,1).*5+31.5
m = 28
[h, p] = ttest(x, m)
% h = 1
% p = 1.4779e-12