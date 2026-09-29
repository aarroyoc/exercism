def squareOfSum:
  [range(1; .input.number + 1)] | add | . * . ;

def sumOfSquares:
  [range(1; .input.number + 1) | . * .] | add ;

if .property == "squareOfSum" then squareOfSum
elif .property == "sumOfSquares" then sumOfSquares
else squareOfSum - sumOfSquares
end