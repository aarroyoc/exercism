# Calculate the square of the sums of the first N natural numbers
# SquareOfSum ? Number
SquareOfSum ← |1 ⁿ2/+⇡+1

# Calculate the sum of the squares of the first N natural numbers
# SumOfSquares ? Number

SumOfSquares ← |1 /+ⁿ2⇡+1

# Calculate the difference between the square of sums and sum of squares
# DifferenceOfSquares ? Number
DifferenceOfSquares ← |1 -SumOfSquares ⟜SquareOfSum
