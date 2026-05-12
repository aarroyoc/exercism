module ArmstrongNumbers (armstrong) where

armstrong :: Integral a => a -> Bool
armstrong n =
  let
    ds = digits n
    armSum = sum $ map (^(length ds)) ds
  in
    armSum == n

digits :: Integral a => a -> [a]
digits n =
  if n < 10 then 
    [n]
  else
    (n `mod` 10):(digits (n `div` 10))
