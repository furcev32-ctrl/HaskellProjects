module Merge where


merge :: [Integer] -> [Integer] -> [Integer]
merge [] l = l
merge l [] = l
merge (x:xs) (y:ys)
    | x < y = x:(merge xs (y:ys))
    | x >= y = y:(merge ys (x:xs))

odds = [1,3..]
oddPrimes (p : ps) = p : (oddPrimes [p' | p' <- ps, p' `mod` p /= 0])

primes :: [Integer]
primes = 2 : oddPrimes (tail odds)

poweredPrimeListsUpTo n = (map (\y -> (map ((\x -> x^y)) [2,3,5,7])) [1,2..n])
-- Examples: 
-- poweredPrimeListsUpTo 2 = [[2,3,5,7,..],[4,9,25,49,..]]
-- poweredPrimeListsUpTo 4 = [[2,3,5,7,..],[4,9,25,49,..],[8,27,125,343,..],[16,81,625,2401,..]]
primepowers :: Integer -> [Integer]
primepowers n = foldl (\l r -> merge l r) ([]) (poweredPrimeListsUpTo n)

