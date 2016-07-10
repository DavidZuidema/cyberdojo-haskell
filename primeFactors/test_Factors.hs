module Test_Factors where

import Test.HUnit
import Factors

tests = TestList [
    TestCase (assertEqual "2 -> [2]" ([2]) (primeFactors 2)),
    TestCase (assertEqual "3 -> [3]" ([3]) (primeFactors 3)),
    TestCase (assertEqual "4 -> [2,2]" ([2,2]) (primeFactors 4)),
    TestCase (assertEqual "6 -> [2,3]" ([2,3]) (primeFactors 6)),
    TestCase (assertEqual "9 -> [3,3]" ([3,3]) (primeFactors 9)),
    TestCase (assertEqual "12 -> [2,2,3]" ([2,2,3]) (primeFactors 12)),
    TestCase (assertEqual "15 -> [3,5]" ([3,5]) (primeFactors 15))]

main = do runTestTT tests
