function cw1_ttest2_params
  data13 = [175.26,177.8,167.64000000000001,160.02,172.72,177.8,175.26,170.18,157.48,160.02,193.04,149.86,157.48,157.48,190.5,157.48,182.88,160.02];
  data17 = [172.72,157.48,170.18,172.72,175.26,170.18,154.94,149.86,157.48,154.94,175.26,167.64000000000001,157.48,157.48,154.94,177.8];

	disp("ttest2")
  [h, p, ci, t] = ttest2(data13,data17)

	disp("ttest2 z alfa = 0.15")
  [h, p, ci, t] = ttest2(data13,data17,'alpha',0.15)

	disp("ttest2 z H1 data13 > data17")
  [h, p, ci, t] = ttest2(data13,data17,'tail','right')

	disp("ttest2 z niejednakową wariancją")
  [h, p, ci, t] = ttest2(data13,data17,'vartype','unequal')