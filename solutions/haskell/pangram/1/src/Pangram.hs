module Pangram (isPangram) where

import Data.Char (toLower)

letters :: String
letters = "abcdefghijklmnopqrstuvwxyz"

isPangram :: String -> Bool
isPangram text = all (\x -> elem x lowerText) letters
  where
    lowerText = fmap toLower text
