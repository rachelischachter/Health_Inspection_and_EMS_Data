BEGIN{
    command = "cat cafeterias.tsv"
    FS = "\t"

    violation = 13
    zip = 8

    #read in line from cafeteria data 
    while ((command | getline) > 0){
	#if line contains choking violation 
	if ($violation ~ "hoking"){
	    # add zip to dictionary / increment count
	    count[$zip] ++
	}
    }
    # print zip | count
    for (key in count){
	if (key){
	    print key "|" count[key]}
}
}

