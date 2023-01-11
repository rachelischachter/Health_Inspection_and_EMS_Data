BEGIN{
    FS = "|"
    file = "treifRests"
    #read in line from data. If the violation is choking, increase choking count per zipcode 
    while ((getline < file) > 0){
	if ($2 ~ "hoking"){
	    count[$1]++
	}
    }
    #print out dictionary of zip | total choking calls 
    for (key in count){
	if (key){
 	    print key "|" count[key]}
    }
}

