-- To RUN the code use the command: "ghc --make App.hs"
-- then type ./App

-- pow2 b e = if (e mod 2 == 0) then (pow2 b 2) * (pow2 b e/2) else b * (pow2 b 2) * (pow2 b e/2)

main :: IO()
main = do
    print(pow1 2 2)