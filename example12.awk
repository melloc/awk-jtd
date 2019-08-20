BEGIN {
	if (ARGC != 2) {
		print "Please provide an argument!" > "/dev/stderr";
		exit 2;
	}

	for (var in ENVIRON) {
		if (var ~ ARGV[1]) {
			print var "=" ENVIRON[var];
		}
	}
}
