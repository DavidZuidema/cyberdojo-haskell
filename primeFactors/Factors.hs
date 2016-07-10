module Factors where

primeFactors :: Int -> [Int]
primeFactors input = primeFactors' input 2 []
    where
    primeFactors' input factor factors
        | input `mod` factor == 0 = primeFactors' (input `div` factor) factor (factors ++ [factor])
        | factor < input = primeFactors' input (factor + 1) factors
        | otherwise = factors
