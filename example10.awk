BEGIN { RS = " " }

/\.$/ { sub(/\.$/, "") }

{ $0 = tolower($0) }

length < 5 { next }
/about/ { next }
/after/ { next }
/because/ { next }
/before/ { next }
/could/ { next }
/didn't/ { next }
/don't/ { next }
/going/ { next }
/right/ { next }
/should/ { next }
/their/ { next }
/there/ { next }
/which/ { next }
/while/ { next }
/would/ { next }

{ words[$0] += 1 }

END {
	for (word in words) {
		if (words[word] < 150)
			continue;
		printf("%s: %d\n", word, words[word]);
	}
}
