function cw5_ttest
	dataAfter  = [74.86,77.4,67.24,59.62,72.32,77.4,74.86,69.78,57.08,59.62,92.64,49.46,57.08,57.08,90.1,57.08];
	dataBefore = [72.32,57.08,69.78,72.32,74.86,69.78,54.54,49.46,57.08,54.54,74.86,67.24,57.08,57.08,54.54,77.4];

	disp("ttest")
	[h,p,c,s] = ttest(dataAfter,dataBefore)

	disp("ttest tail right")
	[h,p,c,s] = ttest(dataAfter,dataBefore,'tail','right')

	disp("ttest2")
	[h,p,c,s] = ttest2(dataAfter,dataBefore)