module DNA (toRNA) where

toRNA :: String -> String
toRNA = fmap complement

complement :: Char -> Char
complement nuc = case nuc of
  'G' -> 'C'
  'C' -> 'G'
  'T' -> 'A'
  'A' -> 'U'
  _ -> error $ "unrecognized nucleotide: " ++ show nuc
