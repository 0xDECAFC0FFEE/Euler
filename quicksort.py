def quicksort(list, comparer):
	if (len(list) == 1 or len(list) == 0):
		return list
	else:
		return (quicksort([ x for x in list if comparer(list[0], x)==-1], comparer) + [ x for x in list if comparer(list[0], x)==0] + quicksort([ x for x in list if comparer(list[0], x)==1], comparer))

def quicksort(list, comparer):
	if (len(list) == 1 or len(list) == 0):
		return list
	else:
		smallerValues = []
		equalValues = 0
		largerValues = []
		for x in list:
			comparison = comparer(list[0], x)
			if comparison == -1:
				smallerValues.append(x)
			elif comparison == 1:
				largerValues.append(x)
			else:
				equalValues+=1
		return (quicksort(smallerValues, comparer)) + [list[0]]*equalValues+(quicksort(largerValues, comparer))

unsortedList = [1,3,4,2,4,54,5,6]
def comparer(num1, num2):
	if (num1 < num2):
		return 1
	elif(num1 > num2):
		return -1
	else:
		return 0

print(quicksort(unsortedList, comparer))