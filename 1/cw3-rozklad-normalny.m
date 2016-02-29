% ćwiczenie sprawdzające umiejętność rysowania wykresów

% 300 próbek w wektorze
normalny = randn(300,1)

% histogram o 20 słupkach
subplot(221)
hist(normalny, 20)

% histogram o 100 słupkach
subplot(222)
hist(normalny, 100)

% wykres świecowy
subplot(212)
boxplot(normalny, 1)