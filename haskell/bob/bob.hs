
module Bob (responseFor) where

  import Data.Char

  responseFor :: String -> String
  responseFor statement
    | isNothing statement = "Fine. Be that way!"
    | isYelling statement = "Woah, chill out!"
    | isQuestion statement = "Sure."
    | otherwise = "Whatever."

  isQuestion :: String -> Bool
  isQuestion statement =
    not (null statement) &&
    last statement == '?'

  isYelling :: String -> Bool
  isYelling statement =
    all isUpper filtered && not (null filtered)
    where filtered = filter isAlpha statement
    
  isNothing :: String -> Bool
  isNothing = all isSpace
