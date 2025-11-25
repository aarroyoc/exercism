module SumOfMultiples (sumOfMultiples) where

import Data.Set (Set)
import qualified Data.Set as Set

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum . Set.fromList $ factors >>= \x -> multiples x limit


multiples :: Integer -> Integer -> [Integer]
multiples n limit 
 | n > 0 = [n,n+n..limit-1]
 | otherwise = [0]