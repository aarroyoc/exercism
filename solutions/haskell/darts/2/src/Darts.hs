module Darts (score) where

score :: Float -> Float -> Int
score x y
  | d > 10 = 0
  | d > 5 = 1
  | d > 1 = 5
  | otherwise = 10
  where
    d = distanceToCenter x y

distanceToCenter :: Float -> Float -> Float
distanceToCenter x y = sqrt ((x * x) + (y * y))
