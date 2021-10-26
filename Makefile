print:
	touch report.txt
	gawk -f lab3-1.awk data.csv > report.txt
