from collections import Counter
cnt = Counter()
with open("programming-tasks/top10_sample.csv") as f:
	for line in f:
		for brand in line.strip()[2:-2].split(","):
			cnt[brand] += 1
print cnt
