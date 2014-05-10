module Beer (sing, verse) where

sing :: Int -> Int -> String
sing a b = 
  unlines (map verse (enumFromThenTo a (a-1) b))

verse :: Int -> String
verse num
  | num > 1 = bottles num ++ " of beer on the wall, " ++ bottles num ++ " of beer.\nTake one down and pass it around, " ++ bottles (num - 1) ++ " of beer on the wall.\n"
  | num == 1 = "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
  | num == 0 = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  | otherwise = error "Never fear, have a beer"


bottles :: Int -> String
bottles num = case num of
  1 -> "1 bottle"
  _ -> show num ++ " bottles"
