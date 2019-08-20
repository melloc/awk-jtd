BEGIN { RS = " " }

/\.$/ { sub(/\.$/, "") }

{ words[tolower($0)] += 1 }

END {
	print "There are", length(words), \
	    "unique words in the text."
}
