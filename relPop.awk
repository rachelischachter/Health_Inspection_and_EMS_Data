BEGIN{
    FS = "|"
    # make dictionary of all zipcodes with health inspection data
    while((getline < "srCombined")>0){
	data[$1] = 1
    }
    # read in a line from the file with all zipcode populations. 
    while((getline < "popZips") > 0){
	# if it is a relevant zipcde, add it to new dictionary 
	if ($1 in data){
	    dict[$1] = $2
	}
    }
    # print out relevant zipcodes
    for (d in dict){
	print d "|" dict[d]
    }

}
