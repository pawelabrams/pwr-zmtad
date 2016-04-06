function cw4_likert
	% dane
  przed30 = [6, 7,10, 9];
  po30    = [5, 6, 2, 3];

	% hipoteza zerowa:
	% mean(przed30) > mean(po30)

	% czy mozemy zastosowac? probki sa maloliczne, ale sprobujmy
	disp("K-S testy przed, po 30")
	[hb, pb, cib, ksb] = kstest(przed30)
	[ha, pa, cia, ksa] = kstest(po30)

	disp("F-test")
	[hf, pf, cif, f] = vartest2(przed30, po30)

	% test
  [h, p, ci, s] = ttest2(przed30, po30, 'tail', 'right')
  % tail right to H_alt