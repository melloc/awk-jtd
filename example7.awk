BEGIN { FS = ","; OFS = "|" }

{
	NF = 4;
	print;
}
