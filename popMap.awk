BEGIN{
    command = "zcat population.gz"
    FS = "|"

    #obtain histogram of population per zipcode
    while ((command | getline) > 0){
	zips[int($1)] = int($4)
    }

    for (z in zips){
	print z "|" zips[z]
    }
}
