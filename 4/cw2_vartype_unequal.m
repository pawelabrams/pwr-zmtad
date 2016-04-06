function cw2_vartype_unequal

	% zaladuj dane
  load body_men.mat;
  load body_women.mat;
  men   = body_men(:,1);
  women = body_women(:,1);

	% aproksymacja t-testu dla roznych wariancji
  [h, p, ci, s] = ttest2(men,women,'vartype','unequal')
  
	% wartosci z dokumentu
  % H = 1, P = 0.0239, CI = [-0.5396, -0.0388], STATS = tstat: -2.2854, df: 128, sd: 0.7215.
  % H = 1, P = 0.0239, CI = [-0.5396, -0.0388], STATS = tstat: -2.2854, df: 127.5103, sd: [2x1 double].
  
  % Zmianie uległa tylko wartość stopni swobody, oraz podane wartości (bo są dwie!)
  % odchylenia standardowego. Sam wynik testu razem z przedziałem ufności nie uległ zmianie.