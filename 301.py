nums = []
for pow2 in range(1,18):
	num = 0
	for index in range(1, 2**pow2+1):
		if (index^(index*2)==index*3):
			num += 1
	nums.append((num, pow2))
print(nums)