% rozkład N(3,7), przyjmując oznaczenie N(mi, V) = N(mi, sigma^2)
X = sqrt(7) * randn(3000,1) + 3

% prezentacja histogramu
subplot(111)
hist(X)