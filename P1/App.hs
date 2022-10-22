-- To RUN the code use the command: "ghc --make App.hs"
-- then type ./App

doubleIt :: Int -> Int
doubleIt x = x * 2

main :: IO()
main = do
    print(doubleIt 200)