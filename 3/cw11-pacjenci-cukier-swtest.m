% lista 3, zadanie 11
% Czy zmienna cukier z pliku pacjenci.csv ma rozkład normalny?

% open file
file = fopen('pacjenci.csv');
data = textscan(file, '%f %f %f %s','Delimiter', ',', 'HeaderLines', 1);
fclose(file);

% select only data on sugar
sugar = data{3};
sugar = sort(sugar);

% make a test
[h, p, w] = swtest(sugar, 0.05, 0)