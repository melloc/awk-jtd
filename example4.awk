BEGIN {
	a = b = c = d = "here is some text";
	sub(/some/, "\\", a);
	sub(/some/, "\\\\", b);
	sub(/some/, "\\\\\\", c);
	sub(/some/, "\\\\\\\\", d);
	printf "%s\n%s\n%s\n%s\n", a, b, c, d;
}
