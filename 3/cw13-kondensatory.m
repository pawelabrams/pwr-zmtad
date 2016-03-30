% lista 3, zadanie 11
% Przyjmując poziom istotnosci 0,05 zweryfikuj hipoteze, ze rozklad pojemnosci kondensatorow jest normalny.

% open file
file = fopen('kondensatory.csv');
data = textscan(file, '%f','Delimiter', ',', 'HeaderLines', 1);
fclose(file);

% select and sort data
capacitors = data{1};
capacitors = sort(capacitors);

% make a test
[h, p, w] = swtest(capacitors, 0.05, 0)