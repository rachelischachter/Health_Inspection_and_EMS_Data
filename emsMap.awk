BEGIN{
    command = "zcat EMS_Incident_Dispatch_Data.tsv.gz"
    FS = "\t"
    
    #obtain histogram of choking calls per zipcode    
    while ((command | getline) > 0){
	if ($5 ~ "^CHOKE$"){
	    calls[$22]++
	}
     }
    #print out zipcode | number of reported choking incidents 
    for (key in calls){
	gsub(",", "", key)
	print key "|" calls[key]
	totalChokes += calls[key]
     }
    print "total chokes: " totalChokes

}
		

	
