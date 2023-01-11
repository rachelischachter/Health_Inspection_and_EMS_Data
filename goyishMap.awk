BEGIN{
    FS = "|"
    file = "goyishSchools"

    #read line in from list of schools. if it has the choking violation, add zipcode to dictionary and increment count for that zipcode 
    while ((getline < file) > 0){
	if ($2 ~ "hoking"){
	    count[$1]++
	}
    }
    # print out zip | count
    for (key in count){
	if (key){
 	    print key "|" count[key]}
    }
}

