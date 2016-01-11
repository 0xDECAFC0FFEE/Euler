def primes(maxNum):
	def primesRecursive(arrayOfMaybePrimes):
		if (len (arrayOfMaybePrimes) == 1):
			return arrayOfMaybePrimes
		else:
			return [arrayOfMaybePrimes[0]]+primesRecursive([ x for x in arrayOfMaybePrimes[1:] if not(x%arrayOfMaybePrimes[0] == 0)])
	
	return primesRecursive(list(range(2,maxNum+1)))

print(primes(1000))