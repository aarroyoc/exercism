module Squares (difference, squareOfSum, sumOfSquares) where

difference :: Integral a => a -> a
difference n = (squareOfSum n) - (sumOfSquares n)

squareOfSum :: Integral a => a -> a
squareOfSum n =
  let
    sumToN = sum [1..n]
  in
    sumToN * sumToN

sumOfSquares :: Integral a => a -> a
sumOfSquares n = sum $ map square [1..n]
  where
    square x = x * x
