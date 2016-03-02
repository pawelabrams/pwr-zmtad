% znajdź P(|Z| < 2)
% możemy to zrobić na kilka sposobów

% możemy sprawdzić to empirycznie
probka  = randn(1000,1);
sukcesy = 0;
for i=1:1000
	if (abs(probka(i)) < 2)
		sukcesy = sukcesy + 1;
	end
end

% odczytać wartości z wykresu, korzystając ze wzoru P(|Z| < 2) = P(Z<2) - P(Z<=-2)
subplot(111)
plot(sort(probka), 0:0.001:0.999)

% lub skorzystać z funkcji cdf (cumulative distribution – dystrybuanta)
pd = makedist('Normal', 0, 1);
p  = cdf(pd, 2) - cdf(pd, -2)
