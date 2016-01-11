def primes(maxNum):
	def primesRecursive(arrayOfMaybePrimes):
		if (len (arrayOfMaybePrimes) == 1):
			return arrayOfMaybePrimes
		else:
			return [arrayOfMaybePrimes[0]]+primesRecursive([ x for x in arrayOfMaybePrimes[1:] if not(x%arrayOfMaybePrimes[0] == 0)])
	
	return primesRecursive(list(range(2,maxNum+1)))

listOfSortaPrimes = primes(1000)
listOfSortaPrimes = [-x for x in listOfSortaPrimes]+[-1, 1]+listOfSortaPrimes
totalListOfPrimes = primes(7000)
totalListOfPrimes = [-x for x in totalListOfPrimes]+totalListOfPrimes

maxNum = 0
maxPrime1 = 0
maxPrime2 = 0
for prime in listOfSortaPrimes:
	for prime2 in listOfSortaPrimes:
		n = 0
		while (n*n+prime*n+prime2) in totalListOfPrimes:
			n += 1
		if (maxNum < n+1):
			maxNum = n+1
			maxPrime1 = prime
			maxPrime2 = prime2

print(maxNum, maxPrime1, maxPrime2)