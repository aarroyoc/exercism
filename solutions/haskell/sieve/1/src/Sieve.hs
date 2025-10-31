module Sieve (primesUpTo) where

-- You should not use any of the division operations when implementing
-- the sieve of Eratosthenes.
import Prelude hiding (div, mod, divMod, rem, quotRem, quot, (/))

primesUpTo :: Integer -> [Integer]
primesUpTo n = primes n [2..n]

primes :: Integer -> [Integer] -> [Integer]
primes _ [] = []
primes n (x:xs) = (x):(primes n (filter notMultiple xs))
  where
    notMultiple i = all (/=i) $ takeWhile (<=n) $ map (*x) [2..]