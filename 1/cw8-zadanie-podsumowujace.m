% ćwiczenie podsumowujące umiejętności potrzebne do wykonania listy

% czasy montażu
czasy = [8.5 7.6 9.3 5.5 11.4 6.9 6.5 12.9 8.7 4.8 4.2 8.1 6.5 5.8 6.7 2.4 11.1 7.1 8.8 7.2];

% boxplot
subplot(211)
boxplot(czasy, 1)

% histogram
subplot(212)
hist(czasy, 7)

% średni czas, mediana, odchylenie standardowe
[m, md, v] = [mean(czasy), median(czasy), var(czasy)]

% min, max
[mn, mx] = [min(czasy), max(czasy)]