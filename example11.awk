match($0, /https:[^[:space:])\]]+/) {
	print substr($0, RSTART, RLENGTH);
}
