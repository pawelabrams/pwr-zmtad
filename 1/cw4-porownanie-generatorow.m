% ćwiczenie sprawdzające umiejętność rysowania wykresów; porównanie generatorów liczb pseudolosowych

% 300 próbek w wektorze z każdego z generatorów
no = randn(300,1)
g1 = gen1(seed, 300)
g2 = gen2(seed, 300)
g3 = gen3(seed, 300)

[m, v] = analyze4(no)
waitforbuttonpress

[m, v] = analyze4(g1)
waitforbuttonpress

[m, v] = analyze4(g2)
waitforbuttonpress

[m, v] = analyze4(g3)
