BEGIN {
	a = "abcdefghijklmnopqrstuvwxyz";
	split(a, alpha, "");
	print "The 13th letter of the alphabet is", alpha[13];
}
