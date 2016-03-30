% lista 3, zadanie 11
% Na poziomie istotnosci 0,1 zweryfikuj hipoteze, ze czas zuzycia sie zarowki ma rozklad normalny.

% open file
file = fopen('zarowki.csv');
data = textscan(file, '%f','Delimiter', ',', 'HeaderLines', 1);
fclose(file);

% select and sort data
bulbs = data{1};
bulbs = sort(bulbs);

% make a test
[h, p, w] = swtest(bulbs, 0.1, 0)