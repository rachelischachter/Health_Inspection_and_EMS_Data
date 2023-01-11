#read in a line from the school zips
#if the zipcode is in the restaurant zips, add totals together
#if not, make a new key and add total

BEGIN{
    FS = "|"
    file1 = "goyishZips"
    file2 = "treifZips"

    #add all elements from school file into dictionary
    while((getline < file1) > 0){
	list[$1] = $2
    }

    #go through restaurant file

    while ((getline < file2) > 0){
	
	#if zipcode already in dictionary, combine the two
	if ($1 in list)
	    list[$1] += $2

	else
	    list[$1] = $2
    }
	#otherwise, add zipcode to dictionary 

	

    #print out dictionary
    for (d in list){
	print d "|"  list[d]
  
    }
}
