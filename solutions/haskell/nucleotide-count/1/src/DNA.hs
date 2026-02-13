module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map (Map)
import qualified Data.Map as Map

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs = fmap countNucleotides $ traverse mapToNucleotide xs

countNucleotides :: [Nucleotide] -> Map Nucleotide Int
countNucleotides = foldl (\acc x -> Map.insert x (1 + (lookupOrZero x acc)) acc) Map.empty 

lookupOrZero :: Nucleotide -> Map Nucleotide Int -> Int
lookupOrZero x m = case Map.lookup x m of
                   Just n -> n
                   Nothing -> 0

mapToNucleotide :: Char -> Either String Nucleotide
mapToNucleotide 'A' = Right A
mapToNucleotide 'C' = Right C
mapToNucleotide 'G' = Right G
mapToNucleotide 'T' = Right T
mapToNucleotide _ = Left "Invalid strand"
                            
