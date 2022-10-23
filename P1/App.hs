-- To RUN the code use the command: "ghc --make App.hs"
-- then type ./App

isDivBy3 :: Int -> Bool
isDivBy3 x = ((mod x 3) == 0)

isDivBy5 :: Int -> Bool
isDivBy5 x = ((mod x 5) == 0)

fizzBuzzConverter :: [Char] -> [Char]
fizzBuzzConverter x = replaceWithFizzBuzz (x ++ ((if (isDivBy3 x) then "Fizz" else "")  ++ (if (isDivBy5 x) then "Buzz" else "")))

replaceWithFizzBuzz :: [Char] -> [Char]
returnStringIfNotEmpty x:xs = if xs == "" then x else xs

putFizzBuzz :: [Int] -> [[Char]]
putFizzBuzz x = map fizzBuzzConverter ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

main :: IO()
main = do
    
    -- putFizzBuzz [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]