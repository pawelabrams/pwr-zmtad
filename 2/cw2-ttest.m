dni = [1, 1, 1, 2, 2, 2, 2, 3, 3, 3,  4,  4,  4,  4,  4,  5,  5,  6,  6,  6,  7,  7]
[h,p] = ttest(dni, 3)
% h = 0
% p =  0.088074
% nie możemy potwierdzić, ale wartość mieści się pomiędzy 2,85 a 4,6
[h,p] =ttest(dni, 4.6) % 0.042
[h,p] =ttest(dni, 2.85) % 0.044