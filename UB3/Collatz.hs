module Collatz where

collatz :: Int -> [Int]
collatz = iterate (\n -> if n `mod` 2 == 0 then n `div` 2 else 3*n + 1 )
    

num :: Int -> Int
num m = getIndexOfTheFirstOne (collatz m) 0

getIndexOfTheFirstOne (x:xs) acc
    | x == 1 = acc
    | otherwise = getIndexOfTheFirstOne xs (acc + 1)

maxNum :: Int -> Int -> (Int, Int)
maxNum a b = foldr (\x y -> if (snd x) >= (snd y) then x else y ) (a, num a) (map (\m -> (m ,num m)) [a..b])

