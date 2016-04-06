function cw6_ttest_men_women
	% data
  load body_men.mat;
  load body_women.mat;
  men   = body_men(:,1);
  women = body_women(:,1);

	disp("ttest")
	[h, p, ci, t] = ttest(men, women)

	disp("ttest tail right")
	[h, p, ci, t] = ttest(men, women,'tail','right')

	disp("ttest2")
	[h, p, ci, t] = ttest2(men, women)

	disp("K-S test dla men-women")
	[h, p, ci, ks] = kstest(men - women)