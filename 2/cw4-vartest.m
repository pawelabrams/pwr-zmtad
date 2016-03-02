% ćwiczenie z pralkami
% sprawdza umiejętność porównywania wariancji

% generowanie 25 losowych elementów o odchyleniu standardowym 1.5; wartość po znaku + jest wartością oczekiwaną i można ją zmienić
x = randn(25,1) * 1.5 + 25;

% testowanie czy wariancja jest mniejsza od 1.6
% jeśli jest mniejsza, h1 = 1; 'Tail','left', czyli var(x)<1.6 to hipoteza alternatywna

[h1,p] = vartest(x,1.6,'Tail','left')

% testowanie czy wariancja jest mniejsza od 1.6 z istotnością alfa < 0.1
[h2,p] = vartest(x,1.6,'Alpha',0.1,'Tail','left')

% wyniki dla różnych próbek:
%h1 0       0       0
%h2 0       0       0
%p  0.45046 0.82602 0.64786
%ci (dla alfa=0.05) 1.0576
%                   3.3571
% (ci można dodać jako trzeci element wynikowego wektora)

% wnioski:
% nie możemy wykluczyć, że wariancja jest większa niż 1.6
% na podstawie ci możemy podać, że odchylenie standardowe mieści się w przedziale (1.0284, 1.8322) z pewnością 95%