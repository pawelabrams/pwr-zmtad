w1 = [88, 69, 86, 59, 57, 82, 94, 93, 64, 91, 86, 59, 91, 60, 57, 92, 70, 88, 70, 85];
w2 = [73, 68, 75, 54, 53, 84, 84, 86, 66, 84, 78, 58, 91, 57, 59, 88, 71, 84, 64, 85];

subplot(2,2,1);
plot(w1,'-ro');
hold on;
plot(w2,'-bo');

subplot(2,2,2);
qqplot(w1);
subplot(2,2,4);
qqplot(w2);

subplot(2,4,5);
boxplot(w1);
subplot(2,4,6);
boxplot(w2);

[p,h,stats] = signtest(w1,w2)