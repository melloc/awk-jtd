BEGIN { FS = ","; OFS = "|" }

{
	$3 = "h";
	NF = 4;
	print;
}
