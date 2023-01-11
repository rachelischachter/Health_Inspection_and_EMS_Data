BEGIN{
    FS = "\t"
    file1 = "frumSchools.txt"
    command = "cat cafeterias.tsv"

    schoolName = 2
    zip = 8
    violation = 13          
    permittee = 10
    
    # get dictionary of all frumSchools
    
    while ((getline < file1) > 0){
	yeshivas[$1] = 1
    }

    # remove frum schools from data and print zip, violation, category just to check
    
    while (( command | getline) > 0){
	flag = 0
	#split title into dif words. go through words and if an word contains a jewish word, flag the school as jewish
	split($2, words, " ")
	for (word in words){
	    if (yeshivas[words[word]]){
		flag = 1
	    }
	
	 # if school is jewish, school = yeshiva
	if (flag){
	    school = "YESHIVA"
	    }

	#otherwise, school = school
	else{
	    school = $2 }
	}


	if (!(school in yeshivas)){
	    print $8 "|" $13 "|" school
	}
    }
	
}

