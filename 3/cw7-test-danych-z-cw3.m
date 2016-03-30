controlB   = [0.08, 0.10, 0.15, 0.17, 0.24, 0.34, 0.38, 0.42, 0.49, 0.50, 0.70, 0.94, 0.95, 1.26, 1.37, 1.55, 1.75, 3.20, 6.98, 50.57];
treatmentB = [2.37, 2.16, 14.82, 1.73, 41.04, 0.23, 1.32, 2.91, 39.41, 0.11, 27.44, 4.51, 0.51, 4.50, 0.18, 14.68, 4.66, 1.30, 2.06, 1.19];

disp('T-test controlB');
[h, p] = ttest(controlB)

disp('T-test treatmentB');
[h, p] = ttest(treatmentB)

disp('KS-test: both');
[h, p, ks] = kstest2(controlB, treatmentB)

disp('KS-test: controlB');
CDFc = normcdf(controlB, mean(controlB), std(controlB, 1));
[h, p, ks, cv] = kstest(controlB, [controlB, CDFc], 0.05)

disp('KS-test: treatmentB');
CDFt = normcdf(treatmentB, mean(treatmentB), std(treatmentB, 1));
[h, p, ks, cv] = kstest(treatmentB, [treatmentB, CDFt], 0.05)