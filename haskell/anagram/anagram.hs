module Anagram (anagramsFor) where

  import Data.Char (toLower)
  import Data.List (sort)

  anagramsFor :: String -> [String] -> [String]
  anagramsFor word wordList = 
    filter (\a -> isAnagram word a) wordList

  isAnagram word1 word2 =
    lowercase word1 /= lowercase word2 &&
    sort (lowercase word1) == sort (lowercase word2)
    where lowercase = fmap toLower
