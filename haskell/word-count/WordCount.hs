module WordCount (wordCount) where

  import qualified Data.Map.Strict as M
  import Data.Char
  import Data.List (foldl')
  import Data.List.Split (splitWhen)

  wordCount :: String -> (M.Map String Int)
  wordCount = 
    foldl' predicate M.empty . splitAndClean
    where predicate = (\acc word -> M.insertWith (+) word 1 acc)

  splitAndClean :: String -> [String]
  splitAndClean = 
    stripEmpty . split . lower
    where
      stripEmpty = filter (not . null)
      split = splitWhen $ not . isAlphaNum
      lower = fmap toLower
