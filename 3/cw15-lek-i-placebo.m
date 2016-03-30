% lista 3, zadanie 15

meds =  [0.135, 23, 0.38, 106, 0.3, 106.2, 52.6, 1.9, 19.5, 5.8, 6.4];
cebo = [1.55, 1.15, 0.27, 0.64, 0.125, 105, 25, 0.8, 3.9, 1.2, 0.145];

% we need to ln() this.
mp = log(meds);
cp = log(cebo);

disp('T-test')
[h, p] = ttest2(mp, cp)

disp('Test K-S')
cdf = normcdf(mp, mean(mp), std(mp,1));
[h, p, ks, cv] = kstest(mp', [mp', cdf'], 0.05)

cdf = normcdf(cp, mean(cp),std(cp,1));
[h, p, ks, cv] = kstest(cp', [cp', cdf'], 0.05)

disp('Test Shapiro-Wilka')
[h, p, w] = swtest(cp)
[h, p, w] = swtest(mp)

disp('Test Lillieforsa')
[h, p, l] = lillietest(cp)
[h, p, l] = lillietest(mp)