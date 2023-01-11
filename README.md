# Health_Inspection_and_EMS_Data

Hypothesis: The New York State Department of Health requires all eateries to have a poster with instructions on what to do if someone is choking, but do
people actually look at the posters when someone is choking?  I personally believe that if someone is choking, no one is taking the time to read the
instructions on a poster. If someone knows CPR, they will perform CPR without looking at the poster, and if they don’t, they will call 911 immediately. 

Data Sources: 
- NYC EMS Medical Dispatch Data- Data containing information from EMS calls in New York City, last updated in 2022. I specifically looked at the zip code
and initial call type for each report
- DOHMH New York City Restaurant Inspection Results- Data containing the results of all health inspections, last updated in 2022. I specifically looked
at the zip code, description of violation, and cuisine type. 
- DOHMH School Cafeteria Inspections- Data containing health inspection results for public, private, and parochial schools in New York City, last updated
in 2022. I specifically looked at the zip code, description of violation, and school name. 
- Income per Zip Code Data 

Procedure: 
- First, I filtered the Health Inspection data for all schools and restaurants in New York City. I made a histogram of the number of eateries with missing
instruction signs per zip code for both data sets and then aggregated the two into one histogram. Next, based on the EMS Data, I created a histogram with
a count of reported choking incidents per zip code in New York City. I then standardized the EMS data based on population per zip code. To do this, I used
the Income per zip code data which included all zip codes in the United States. If a particular zip code was a key in the health inspection histogram, I
added that zip code and its respective population to a new file of relevant zip codes. I then divided the EMS count per zip code by the population per zip
code. Finally, I combined the standardized EMS data with the health inspection data. I plotted the data with the health inspection on the x axis and the
EMS data on the y axis using a log scale. 
I then noticed that a lot of the schools in New York City were Jewish Orthodox schools. Orthodox Jews have their own emergency medical service organization
called Hatzolah, and most institutions will call Hatzolah before 911, and I was curious how this affected the data. I compiled a list of keywords that
indicate a Jewish Orthodox school. Using the “school name” field, I flagged any Jewish Orthodox schools. I also flagged any kosher restaurants by looking
at the “cuisine description” field.  I repeated the procedure stated above for this new data set. 

Conclusion: 
Based on the data, it is hard to see the effect that the choking posters have on the number of reported choking incidents. Though there was a slight
correlation between the two data sets, I believe that there wasn’t enough data to draw any significant conclusions. There weren’t that many institutions
lacking proper signage, and choking doesn’t necessarily only occur at school or in a restaurant. I do, however, think that this was a successful project
because my model is very scalable and versatile. One can easily use this program to correlate other types of health code violations with other emergency
calls. I look forward to using this model on bigger data sets.
