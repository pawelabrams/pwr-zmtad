% ćwiczenie z nieruchomościami
nier = 18;
wzr = randn(nier,1) * 14 + 38;

% wyliczenie p ze wzoru
p = tcdf((mean(wzr) - 49) / (std(wzr) / sqrt(nier)), nier-1)

% wyliczenie p za pomocą ttest
[h,ptest] = ttest(wzr,49,'Alpha',0.01)

% p jest prawdopodobieństwem, że t < dystryb(alfa/2);
% wartość p obliczoną ze wzoru należy zatem podwoić, żeby porównać z ptest

[ptest, p*2]