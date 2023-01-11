BEGIN{
    file1 = "goyishCombined"
    file2 = "emsPopZips"

    FS = "|"

    #array of school/restzips 
    while((getline < file1) > 0){
	srZips[$1] = $2
    }

    #array of EMS zips
    while((getline < file2) > 0){
	emsZips[$1] = $2
    }

    #see if zipcode is common to both. if common to both, output (zipcode | posterCount | incidentCount)
    for (zipcode in emsZips){
	if (srZips[zipcode] && emsZips[zipcode])
	    print zipcode "|" srZips[zipcode] "|" emsZips[zipcode]
    }
    
}
