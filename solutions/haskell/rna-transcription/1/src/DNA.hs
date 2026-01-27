module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA [] = Right ""
toRNA (x:xs) = case x of
                 'G' -> fmap (prefixChar 'C') $ toRNA xs
                 'C' -> fmap (prefixChar 'G') $ toRNA xs
                 'T' -> fmap (prefixChar 'A') $ toRNA xs
                 'A' -> fmap (prefixChar 'U') $ toRNA xs
                 _ -> Left x

  where
    prefixChar c s = c:s
