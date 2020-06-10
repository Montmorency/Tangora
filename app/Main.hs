module Main where

import Lib
import Data.Char

main :: IO ()
main = do
    putStrLn "Number to Decimalize" 
    input1 <- getLine
    let x = (read input1 :: Int)
    putStrLn $ showDigits $ convertDectoBin x
