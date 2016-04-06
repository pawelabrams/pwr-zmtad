function cw3_gestykulacja
  nerwowi  = [3, 3, 4, 5, 5];
  spokojni = [4, 6, 7, 9, 9];

	% czy mozemy zastosowac t-test?
	disp("K-S testy nerwowych, spokojnych")
	[hn, pn, cin, ksn] = kstest(nerwowi)
	[hs, ps, cis, kss] = kstest(spokojni)

	disp("F-test")
	[hf, pf, cif, f] = vartest2(nerwowi, spokojni)

	% test
	disp("t-test")
  [h, p, ci, s] = ttest2(nerwowi,spokojni,'tail','left')
  % hipoteza alternatywna to to, ze nerwowi wykonuja wiecej gestow