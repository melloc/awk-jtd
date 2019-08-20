BEGIN {
	lastn = "";
	lastl = 0;
}

function fileinfo() {
	if (lastn == "")
		return;
	printf("File %s has %d lines\n", lastn, lastl);
}

FNR == 1 {
	fileinfo()
	lastn = FILENAME
}

{ lastl = FNR }

END {
	fileinfo();
	print NR, "total lines";
}
