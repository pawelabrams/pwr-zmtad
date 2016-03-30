% lista 3, cwiczenie 6
% Na podstawie zbioru danych pacjenci.csv należy zbadać czy wzrost mężczyzn oraz wzrost kobiet mają takie same rozkłady.

% open file
file = fopen('pacjenci.csv');
data = textscan(file, '%f %f %f %s','Delimiter', ',', 'HeaderLines', 1);
fclose(file);

% select only relevant data
height = data{1};
gender = data{4};

% init counters
countAll = numel(data{1});
countM = 0;
countF = 0;

% filter the genders
for i=1:countAll
   if gender{i}=='K'
       countF = countF+1;
       heightF(countF) = height(i);
   else
       countM = countM+1;
       heightM(countM) = height(i);
   end
end

disp('Wzrost kobiet vs wzrost mezczyzn -- test K-S');
[H,P,KSSTAT] = kstest2(heightM, heightF)