module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz 1 = Just 0
collatz n = 
  if n > 1 then
    if (even n) then
      fmap (+1) $ collatz (n `div` 2)
    else
      fmap (+1) $ collatz (1 + (n * 3))
  else
    Nothing
