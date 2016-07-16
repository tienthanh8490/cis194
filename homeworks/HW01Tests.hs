-- CIS 194, Spring 2015
--
-- Test cases for HW 01

module HW01Tests where

import HW01
import Testing

-- Exercise 1 -----------------------------------------

testLastDigit :: (Integer, Integer) -> Bool
testLastDigit (n, d) = lastDigit n == d

testDropLastDigit :: (Integer, Integer) -> Bool
testDropLastDigit (n, d) = dropLastDigit n == d

ex1Tests :: [Test]
ex1Tests = [ Test "lastDigit test" testLastDigit
             [(123, 3), (1234, 4), (5, 5), (10, 0), (0, 0)]
           , Test "dropLastDigit test" testDropLastDigit
             [(123, 12), (1234, 123), (5, 0), (10, 1), (0,0)]
           ]

-- Exercise 2 -----------------------------------------

testToRevDigits :: (Integer, [Integer]) -> Bool
testToRevDigits (n,d) = toRevDigits n == d

ex2Tests :: [Test]
ex2Tests = [Test "toRevDigits test" testToRevDigits
             [(123, [3,2,1]), (1234, [4,3,2,1]), (5, [5]), (0, []), (-12, [])]
            ]

-- Exercise 3 -----------------------------------------

testDoubleEveryOther :: ([Integer], [Integer]) -> Bool
testDoubleEveryOther (n,d) = doubleEveryOther n == d

ex3Tests :: [Test]
ex3Tests = [Test "doubleEveryOther test" testDoubleEveryOther
             [([4,9,5,5], [4,18,5,10]), ([0,0], [0,0]), ([1,-3,-2,4], [1,-6,-2,8])]
            ]

-- Exercise 4 -----------------------------------------

testSumDigits :: ([Integer], Integer) -> Bool
testSumDigits (n,d) = sumDigits n == d

ex4Tests :: [Test]
ex4Tests = [Test "sumDigits test" testSumDigits
             [([10,5,18,4], 19), ([0,0], 0)]
            ]

-- Exercise 5 -----------------------------------------

testLuhn :: (Integer, Bool) -> Bool
testLuhn (n,d) = luhn n == d

ex5Tests :: [Test]
ex5Tests = [Test "luhn test" testLuhn
             [(5594589764218858, True), (1234567898765432, False), (38520000023237, True),
              (4485061597462645, True), (5464907643327459, True), (6011814127930475, True),
              (370243487849545, False), (373500315103082, False)]
            ]

-- Exercise 6 -----------------------------------------

testHanoi :: (Integer,Peg,Peg,Peg,[Move]) -> Bool
testHanoi (n,a,b,c,d) = hanoi n a b c == d

ex6Tests :: [Test]
ex6Tests = [Test "hanoi test" testHanoi
             [(2,"a","b","c",([("a","c"), ("a","b"), ("c","b")]))]
            ]

-- All Tests ------------------------------------------

allTests :: [Test]
allTests = concat [ ex1Tests
                  , ex2Tests
                  , ex3Tests
                  , ex4Tests
                  , ex5Tests
                  , ex6Tests
                  ]