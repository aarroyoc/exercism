module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify n
  | n < 1 = Nothing
  | factorsum == n = Just Perfect
  | factorsum > n = Just Abundant
  | factorsum < n = Just Deficient
  where
    factorsum = sum $ factors n

factors :: Int -> [Int]
factors n = filter factorOfN [1..(n - 1)]
  where
    factorOfN x = n `mod` x == 0