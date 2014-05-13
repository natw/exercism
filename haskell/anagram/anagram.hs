module Anagram (anagramsFor) where

import Data.Char (toLower)
import Data.List (sort)

anagramsFor :: String -> [String] -> [String]
anagramsFor word =
  filter (\a -> isAnagram word a)

isAnagram :: String -> String -> Bool
isAnagram word1 word2 =
  (\w1 w2 -> w1 /= w2 && sort w1 == sort w2) lword1 lword2
  where
    lowercase = fmap toLower
    lword1 = lowercase word1
    lword2 = lowercase word2
