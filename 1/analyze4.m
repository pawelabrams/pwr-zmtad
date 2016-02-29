function [m, v] = analyze4(X)
	% funkcja analizująca do zadania 4
	
	% górny wykres, histogram 20-słupkowy
	subplot(211)
	hist(X, 20)
	
	% dolny wykres, histogram 100-słupkowy
	subplot(212)
	hist(X, 100)
	
	% średnia i wariancja
	m = mean(X)
  v = var(X)