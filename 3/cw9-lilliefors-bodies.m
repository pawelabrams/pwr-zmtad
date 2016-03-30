% load data
load('body_men.mat');
load('body_women.mat');

% means, stds
meanW = mean(bodyW);
stdW  = std(bodyW,1);
meanM = mean(bodyM);
stdM  = std(bodyM,1);

%
cdfAllW = normcdf(bodyW, meanW, stdW);
cdfAllM = normcdf(bodyM, meanM, stdM);

% compute and display
disp('kobiety')
[h, p, l, cv] = lillietest(bodyW)
disp('mezczyzni')
[h, p, l, cv] = lillietest(bodyM)