BEGIN{
    FS = "\t"
    command = "zcat restaurants.gz"

    violation = 12
    zip = 6
    # read in line from restuarant data.
    while ((command | getline) > 0){
	# if it has the choking violation, add zipcode to dictionary and increment count 
	if ($12 ~ "hoking"){
	    count[$6]++
	}
    }
    # print zip | count
    for (key in count){
 	    print key "|" count[key]}

}
