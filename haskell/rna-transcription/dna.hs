module DNA (toRNA) where

  toRNA :: String -> String
  toRNA = fmap complement

  complement :: Char -> Char
  complement 'G' = 'C'
  complement 'C' = 'G'
  complement 'T' = 'A'
  complement 'A' = 'U'
