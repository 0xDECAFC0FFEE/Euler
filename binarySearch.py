def binarySearch(list, comparer, tuple):
	if len(list) == 0:
		return False
	comparison = comparer(list[len(list)//2], tuple)
	if comparison == 1:
		return binarySearch(list[len(list)//2: len(list)], comparer, tuple)
	elif comparison == -1:
		return binarySearch(list[0:len(list)//2], comparer, tuple)
	else:
		return True


def comparer(tuple1, tuple2):
	for num in [0,1,2]:
		if tuple1[num] < tuple2[num]:
			return 1
		elif tuple1[num] > tuple2[num]:
			return -1
	return 0
