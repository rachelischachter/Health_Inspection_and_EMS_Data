BEGIN{
    file1 = "relevantPops"
    file2 = "emsZips"

    FS = "|"

    #array of zip and pop
    while((getline < file1) > 0){
	pop[$1] = $2
    }

    #array of EMS zips
    while((getline < file2) > 0){
	emsZips[$1] = $2
    }

    #see if zipcode is common to both. if common to both, output (zipcode | incidents/population * 100 )
    for (zipcode in emsZips){
	if (pop[zipcode] && emsZips[zipcode]){
	    quot = (emsZips[zipcode] / pop[zipcode]) 
	    print zipcode "|" quot
	}
    }
    
}
