% ćwiczenie sprawdzające umiejętność korzystania z funkcji rysujących

% dane
x1 = 2*(randn(100,1)+1);
x2 = 3*(randn(100,1)-1);
z  = [x1 x2];

% boxplot 
subplot(211)
boxplot(z,1)

% histogram
subplot(212)
hist(z)