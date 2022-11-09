module Polynom where

type Polynom = [Double]

cmult :: Polynom -> Double -> Polynom
cmult [] x = []
cmult poly 0 = []
cmult poly 1 = poly
cmult poly x = map (x*) poly

eval :: Polynom -> Double -> Double
eval [] x = 0
eval (p:ps) 0 = p
eval poly 1 = sum poly
eval poly x = foldr (\e n-> e + x*n) 0 poly

deriv :: Polynom -> Polynom
deriv [] = []
deriv (p:ps) =  zipWith (*) [1..] ps
