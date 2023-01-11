import pyspark
sc = pyspark.SparkContext()

def zipSplit(line):
    fields = line.split('|')
    zip = fields[0]
    try: count = int(fields[1])
    except: count = 0

    return zip, count


schoolLines = sc.textFile("schoolZips")
schoolPairs = schoolLines.map(zipSplit)  #(zipcode, count)

restLines = sc.textFile("restZips")
restPairs = restLines.map(zipSplit) #(zipcode, count)

totalPairs = restPairs.union(schoolPairs)
reducedPairs = totalPairs.reduceByKey(lambda x,y: x+y)

final = reducedPairs.collect()


for f in final:
    print (str(f[0]) + '|' + str(f[1])) 

    
