function cw10_wzrost_mwwtest
	data13 = [175.26,177.8, 167.64,160.02,172.72,177.8, 175.26,170.18,157.48,160.02,193.04,149.86,157.48,157.48,190.5, 157.48,182.88,160.02];
	data17 = [172.72,157.48,170.18,172.72,175.26,170.18,154.94,149.86,157.48,154.94,175.26,167.64,157.48,157.48,154.94,177.8];
	size (data13) == size (data17)
	disp("Dane nie są równoliczne.")
	disp("Zmienne są zależne, U-test może nie wyjść!")
	mwwtest(data13, data17)
