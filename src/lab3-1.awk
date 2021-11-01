BEGIN {
	FS = ",";    # Set string delimiter to comma
}

{
	# Ignoring header record, fill array with index=year and value incremented for each instance of that year
	if(NR!=1) years[substr($3,0,4)]++; 
}

END {
  print "Number of birds colliding with buildings in Chicago by year";
  
  # I. Initialize variables needed for printing
  years_length = asorti(years,years_orderi);
  years_init = years_orderi[1];
  years_final = years_orderi[years_length];
  
  # II. Loop through |years| and print formatted data
  for (i in years)
  {
  	# i. Conditional printing to divide the years into groups of eleven
  	if ( (i-years_init)%11 == 0)
  	{
  		# a. Print the boundary years of the group
  		bound = i+10;             # Upper Bound
  		if (!(bound in years))
  			bound = years_final;
  		print "\nFrom " i " to " bound;
  		
  		# b. Obtain and print average of group data
  		sum = 0;
  		for (n=i; n<=bound; n++)
  				sum += years[n];
  		print "\tAVERAGE: " sum/(bound-i+1);
  	}
  	# ii. Print the data
  	print "\t" i ": " years[i];
  }
}
