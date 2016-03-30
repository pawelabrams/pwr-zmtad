% lista 3, zadanie 10
% Przeprowadz analize czy dane te pochodzą z rozkładu normalnego:

% controlA
controlA = [0.22, -0.87, -2.39, -1.79, 0.37, -1.54, 1.28, -0.31, -0.74, 1.72, 0.38, -0.17, -0.62, -1.10, 0.30, 0.15, 2.30, 0.19, -0.50, -0.09];
controlA = sort(controlA);
a = 0.05;
[h, p, w] = swtest(controlA, a, 0)
qqplot(controlA)

% treatmentA
treatmentA=[-5.13, -2.19, -2.43, -3.83, 0.50, -3.25, 4.32, 1.63, 5.18, -0.43, 7.11, 4.87, -3.10, -5.81, 3.76, 6.31, 2.58, 0.07, 5.76, 3.50];
treatmentA = sort(treatmentA);
[h, p, w] = swtest(treatmentA, a, 0)
figure
qqplot(treatmentA)

% controlB
controlB = [0.08, 0.10, 0.15, 0.17, 0.24, 0.34, 0.38, 0.42, 0.49, 0.50, 0.70, 0.94, 0.95, 1.26, 1.37, 1.55, 1.75, 3.20, 6.98, 50.57];
%controlB = sort(controlB); % it's already sorted ;)
[h, p, w] = swtest(controlB, a, 0)
figure
qqplot(controlB)

% treatment B
treatmentB = [2.37, 2.16, 14.82, 1.73, 41.04, 0.23,  1.32, 2.91, 39.41, 0.11, 27.44, 4.51, 0.51, 4.50, 0.18, 14.68, 4.66, 1.30, 2.06, 1.19];
treatmentB = sort(treatmentB);
[H, pValue, W] = swtest(treatmentB, a, 0)
figure
qqplot(treatmentB)