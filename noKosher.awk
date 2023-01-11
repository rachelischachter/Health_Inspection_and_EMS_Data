BEGIN{
    FS = "\t"
    command = "zcat restaurants.gz"

    #read in file. If file is not tagged as a Jewish restaurant, print zipcode | violation | type of cuisine 
    while ((command | getline) > 0){
	if (($8) && ($8 !~ "Jewish")){
	    print $6 "|" $12 "|" $8
	}
    }
}


