% ćwiczenie sprawdzające umiejętność rysowania wykresów

% 300 próbek w wektorze
normalny = randn(300,1)

% histogram o 20 słupkach
hist(normalny, 20)

% histogram o 100 słupkach
hist(normalny, 100)

% wykres świecowy
boxplot(normalny, 1)