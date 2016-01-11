tripleList = []
trueMaxL = 1500000		#92326
import math
maxL = 900				#stable

def gcd(a, b):
	if (b == 0):
		return a
	else:
		return gcd(b, a%b)

print("creating list of primitive tuples")

for n in range (1, maxL):
	for m in range(n+1, maxL, 2):
		if (gcd(m,n) == 1):
			a = m*m-n*n
			b = 2*m*n
			c = m*m+n*n
			if (a+b+c <= trueMaxL):
				if b > a:
					(a,b)=(b,a)
				tripleList.append((a,b,c))

print("adding multiples of primitive triples and changing into size dictionary")

sizeDict = dict()
for triple in tripleList:
	n = 1
	while (triple[0]+triple[1]+triple[2])*n <= trueMaxL:
		size = (triple[0]+triple[1]+triple[2])*n
		if size in sizeDict:
			if (not(sizeDict[size] == 5)):
				sizeDict[size] = 5
		else:
			sizeDict[size] = 1
		n=n+1

print("finding number of ones in dictionary")

totalNumOf1s = 0
for length in sizeDict:
	if sizeDict[length] == 1:
		totalNumOf1s+=1

print(totalNumOf1s)