module Lib
    ( convertDectoBin,
      showDigits
    ) where

import Data.Char
import Data.List

convertDectoBin :: Int -> [Int]
convertDectoBin =
  unfoldr (\x -> if x == 0 then Nothing else Just (mod x 2, div x 2))

showDigits :: [Int] -> String
showDigits =
  reverse . map (chr . (+ 48))



chooseBin :: Int -> Int -> Int
chooseBin n k  
    | k == 0 =  1
    | (n == 0) .&. (k == 1) = 0
    

applyLucasLemma :: [(Int, Int)] -> Int
applyLucasLemma (a,b):[] =
    foldr (*) 1 choose m 






