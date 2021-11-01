print:
	touch report.txt
	gawk -f src/lab3-1.awk data/data.csv > report.txt
