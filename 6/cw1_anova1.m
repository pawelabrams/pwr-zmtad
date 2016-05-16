load('anova_data.mat');

disp('# Testy normalnosci danych:');
% test Shapiro-Wilka
% H0: nie ma powodu, by nie mowic, ze nie sa z rozkladu normalnego
% p < 0.05, H1: nie sa z r. n., nie mozemy kontynuowac
for x = 1:3
	[h p stats] = swtest(koala(:, x))
end

disp('# Test wariancji danych:');
% test wariancji dla wielu probek
% H0: nie ma powodu, by nie mowic, ze wariancje sa rozne 
[p stats] = vartestn(koala)

disp('# ANOVA:');
% H0: 
p = anova1(koala)

%p > 0.05; nie ma podstaw do odrzucenia hipotezy, ze sa rowne