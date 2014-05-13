module WordCount (wordCount) where

import qualified Data.Map.Strict as M
import Data.Char
import Data.List (foldl')
import Data.List.Split (wordsBy)

wordCount :: String -> (M.Map String Int)
wordCount =
  foldl' countWord M.empty . splitAndClean
  where countWord acc word = M.insertWith (+) word 1 acc

splitAndClean :: String -> [String]
splitAndClean =
  split . lower
  where
    split = wordsBy $ not . isAlphaNum
    lower = fmap toLower
