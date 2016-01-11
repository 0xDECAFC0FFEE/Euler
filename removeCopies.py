def removeCopies(listOfTuples):
	dictOfTuples = dict()
	for tuple in listOfTuples:
		if (not tuple in dictOfTuples):
			dictOfTuples[tuple] = 1
		else:
			print("removed a copy")
	listOfTuples2 = []
	for tuple in dictOfTuples:
		listOfTuples2 += [tuple]
	return listOfTuples2