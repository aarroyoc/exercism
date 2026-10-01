# Calculate the scrabble score of a word
# Score ? Word
Chars    ← "AEIOULNRSTDGBCMPFHVWYKJXQZ"
Scores   ← [1 1 1 1 1 1 1 1 1 1 2 2 3 3 3 3 4 4 4 4 4 5 8 8 10 10]
UpCase   ← ⍥(-32)⊸≥@a
Score ← /+˜⊏Scores ⊗Chars UpCase 
