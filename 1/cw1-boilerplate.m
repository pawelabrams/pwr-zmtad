% ćwiczenie polegające na sprawdzeniu jak wyglądają wartości funkcji wbudowanych

% pomoc
help matlab

% wyświetlenie wyniku operacji
a = 1

% tłumienie wyświetlenia
a = 1;

% lista zdefiniowanych zmiennych
who

% macierz zerowa
zeros(3,4)    %(rows, cols)

% macierz wypełniona jedynkami
ones(3,4)     %(rows, cols)

% macierz jednostkowa, w razie potrzeby rozszerzona do prawej zerami
ey = eye(3,4) %(rows, cols)

% sklejanie macierzy parukrotnie
repmat(ey, 2)    % 2x2
repmat(ey, 2, 1) % 2 w pionie, 1 w poziomie
repmat(ey, 1, 2) % 1 w pionie, 2 w poziomie

% rozkład jednorodny
rand(4,5)     %(rows, cols)

% rozkład normalny N(0,1)
randn(4,5)    %(rows, cols)

% operacje na macierzach
A = [1, 2, 3; 4, 5, 6; 7, 8, 9]
B = ones(3,3).*2

% transpozycja
A'

% dodawanie, odejmowanie, mnożenie macierzy, mnożenie element-wise, potęgowanie element-wise
A + B
A - B
A * B
A.* B
A.^ 2

% wyszukanie elementu
B(3,2)

% ranges – uwaga, są domknięte z obu stron!
1:10      % min:max
1:0.5:10  % min:step:max

% plot musi mieć wektory tej samej długości – 0:0.001:1 ma 1001 elementów, 0:0.001:0.999 albo 0.001:0.001:1.
