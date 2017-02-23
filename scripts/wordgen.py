import argparse
import random

consonants = ["k","t","b","r","h","ch","s","v","ng","n","m","ngk","nd","mb","tch","ts","bv",""]
glides = ["y","l","w",""]
vowels = ["a","e","i","o","u"]

parser = argparse.ArgumentParser()
parser.add_argument("number", type=int)

args = parser.parse_args()

syllables = []
for i in range(args.number):
    syllables.append((random.choice(consonants) + random.choice(glides) + random.choice(vowels) + random.choice(consonants)))

for syllable in syllables:
    print(syllable)