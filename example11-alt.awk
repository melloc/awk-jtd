{
	while (match($0, /https:[^[:space:])\]]+/)) {
		print substr($0, RSTART, RLENGTH);
		$0 = substr($0, RSTART + RLENGTH);
	}
}
