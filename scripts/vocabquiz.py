import random
file = open("vocabulary.csv",'r')
words = []
for line in list(file)[1:]:
	words.append(line.rstrip().split(","))
numcorrect = 0
numincorrect = 0
while True:
	chosenwords = []
	for chosenword in random.sample(words, 4):
		chosenwords.append(chosenword)
	printsaltani = random.choice(range(2))
	printnum = 1 if printsaltani else 2
	offernum = 2 if printsaltani else 1
	for i in range(4):
		word = chosenwords[i]
		print("ASDF"[i],word[0].ljust(13),"-",word[printnum])
	rightnumber = random.choice(range(4))
	userchoice = input("which is \""+chosenwords[rightnumber][offernum]+"\"? ")
	if userchoice == "asdf"[rightnumber]:
		print("correct!")
		numcorrect += 1
	elif userchoice == "q":
		break
	else:
		print("no, it's","ASDF"[rightnumber]+":",chosenwords[rightnumber][printnum])
		numincorrect += 1
	print(numcorrect,"right and",numincorrect,"wrong\n")