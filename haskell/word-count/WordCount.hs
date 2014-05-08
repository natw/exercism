module WordCount (wordCount) where

  import qualified Data.Map.Strict as M
  import Data.Char
  import qualified Data.Text as T

  wordCount :: String -> (M.Map String Int)
  wordCount = 
    foldl (\acc word -> M.insertWith (+) word 1 acc) M.empty . splitAndClean

  splitAndClean :: String -> [String]
  splitAndClean = 
    filter (not . null) . fmap toLowerAlphaNum . split
    where toLowerAlphaNum = fmap toLower . filter isAlphaNum
          split = fmap T.unpack . T.split (\c -> elem c " _,;.") . T.pack
