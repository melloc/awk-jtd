BEGIN { RS = " " }

/\.$/ { sub(/\.$/, "") }

/^[[:upper:]]+$/ {
	caps[$0] += 1;
}

END {
	for (word in caps) {
		if (caps[word] < 10)
			continue;
		printf("%s: %d\n", word, caps[word]);
	}
}
