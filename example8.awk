NR > 1 {
        printf "\n";
}

{
	print "The whole line is", $0;
	for (i = 1; i <= NF; i++) {
		if (i % 2 != 0)
			continue;
		printf("Field %d is %s\n", i, $i);
	}
	print "The last field is", $NF;
	print "The second to last field is", $(NF - 1);
}
