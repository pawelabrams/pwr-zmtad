% lista 3, zadanie 14
% Na podstawie danych z pliku absolwenci.sav zbadaj, czy płace absolwentów rolnictwa i pedagogiki mają rozkłady normalne.

% open file
file = fopen('absolwenci.csv');
data = textscan(file, '%f %s %s %f %s %s','Delimiter', ';', 'HeaderLines', 1);
fclose(file);

% select relevant data
field  = data{3};
salary = data{4};

% now filter it into fields
countR = 0;
countP = 0;
for i=1:numel(data{1})
   if strcmp(field{i}, 'Rolnictwo')
       countR = countR + 1;
       salaryR(countR) = salary(i);
   elseif strcmp(field{i}, 'Pedagogika')
       countP = countP + 1;
       salaryP(countP) = salary(i);
   end
end

% aaand the test
[h, p, w] = swtest(salaryR, 0.05)
[h, p, w] = swtest(salaryP, 0.05)