% open file
file = fopen('czytelnictwo.csv');
data = textscan(file, '%f %f','Delimiter', ',', 'HeaderLines', 1);
fclose(file);

% select relevant data
przed  = data{1};
po = data{2};

subplot(121);
plot(przed,'-ro');
hold on;
plot(po,'-bo');

subplot(143);
boxplot(przed);
subplot(144);
boxplot(po);

disp('H0 = Nie ma zmiany w czytelnictie');
[p, h, stats] = ranksum(przed,po)

disp('mediany');
mb = median(przed)
ma = median(po)

sb = mean(przed)
sa = mean(po)