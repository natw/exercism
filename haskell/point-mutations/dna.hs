module DNA (hammingDistance) where

import Data.List (foldl')

hammingDistance :: String -> String -> Int
hammingDistance a b =
  foldl' pairDistance 0 $ zip a b
  where pairDistance = \acc (x,y) -> if x == y then acc else acc + 1
