def div (num, denom, CallsLeft = 100):
	assert(num < denom)
	def recursiveDivision(num, denom, listOfDenoms, CallsLeft):
		try:
			indexOfThing = listOfDenoms.index((num%denom)*10)
			return len(listOfDenoms)-indexOfThing
		except:
			if (CallsLeft == 0):
				return -1
			else:
				if (num%denom == 0):
					return 0
				else:
					return recursiveDivision((num%denom)*10, denom, listOfDenoms+[(num%denom)*10], CallsLeft-1)
	return recursiveDivision(num*10, denom, [], CallsLeft)

maxRepeatDepth = 0
indexOfMaxRepeat = -1
for index in range(2, 1000):
	indexRepeat = div(1, index)
	if (indexRepeat == -1):
		indexRepeat = div(1, index, 1000)
	if (indexRepeat > maxRepeatDepth):
		maxRepeatDepth = indexRepeat
		indexOfMaxRepeat = index

print(maxRepeatDepth)
print(indexOfMaxRepeat)


"""
manual division

def div (num, denom, CallsLeft = 100):
	assert(num < denom)
	def recursiveDivision(num, denom, listOfDenoms, CallsLeft):
		try:
			indexOfThing = listOfDenoms.index((num%denom)*10)
			return str(num//denom)+"  repeated length is "+ str(len(listOfDenoms)-indexOfThing)
		except:
			if (CallsLeft == 0):
				return " ran out of calls. fraction probably doesn't repeat"
			else:
				if (num%denom == 0):
					return str(num//denom)+" fraction doesn't repeat"
				else:
					return str(num//denom)+recursiveDivision((num%denom)*10, denom, listOfDenoms+[(num%denom)*10], CallsLeft-1)
	return "."+recursiveDivision(num*10, denom, [], CallsLeft)

"""