module Polynom where

--cmult :: Polynom -> Double -> Polynom
cmult p x = map (x*) p

--eval :: Polynom -> Double -> Double
eval p x = foldr (\e n-> e + x*n) 0 p

