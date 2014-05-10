module DNA (count, nucleotideCounts) where

import qualified Data.Map.Strict as M

count :: Char -> String -> Int
count nuc
  | nuc `elem` "GATCU" = length . filter (nuc ==)
  | otherwise = error ("invalid nucleotide " ++ show nuc )

nucleotideCounts :: String -> (M.Map Char Int)
nucleotideCounts strand = 
  M.fromList (map (\nuc -> (nuc, (count nuc strand))) "GATC")
