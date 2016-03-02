% ćwiczenie z klientelą dla nowego i znanego produktu
% sprawdza umiejętność porównywania wariancji

% generowanie próby
n = randn(20,1) * 5.5 + 27.7;
z = randn(22,1) * 6.3 + 32.1;

% testowanie czy wariancja jest równa; h = 1 znaczyłoby, że nie możemy porównywać populacji, bo są niehomogeniczne

[h,p] = vartest2(n,z)

% h = 0
% p = 0.96344

% wniosek: możemy porównywać obie populacje, nie można stwierdzić niehomogeniczności prób