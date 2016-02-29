% ćwiczenie sprawdzające umiejętność obróbki danych z pliku

% IRIS - plik z kolumnami o stałych szerokościach
iris = importdata('iris.txt', ' ', 1);

% histogram dla wszystkich kolumn numerycznych
subplot(211)
hist(iris.data, 20)

% histogram dla kolumn 1 i 2 (tj. 2 i 3; data zawiera tylko wartości numeryczne)
subplot(212)
hist([iris.data(:,1) iris.data(:,2)])
waitforbuttonpress

% GLASS - plik oddzielany tabami (tab delimited file, tdf)

glass = tdfread('glass.txt');

% histogram dla Na i K
subplot(111)
hist([glass.Na glass.K])