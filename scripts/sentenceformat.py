file = open("test_sentences.txt")

lines = []
for line in file:
    lines.append(line.strip())

numlines = 1
writefile = open("test_sentences_fixed.txt", "w")
for line in lines:
    writefile.write(str(numlines) + ". " + line + "\n")
    numlines += 1