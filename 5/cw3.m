% open file
file = fopen('chmiel.csv');
data = textscan(file, '%f %f','Delimiter', ',', 'HeaderLines', 1);
fclose(file);

% select relevant data
zapyl = data{1};
niezapyl = data{2};

subplot(211);
qqplot(zapyl);
subplot(212);
qqplot(niezapyl);

mz = median(zapyl)
mn = median(niezapyl)

('H0 = nie ma wp?ywu')
[p, h] = ranksum(zapyl, niezapyl)