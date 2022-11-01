
module Arithmetik (
    pow1,
    pow2,
    pow3,
    biSec
) where
import Prelude
pow1 b 0 = 1
pow1 b e = b * pow1 b (e-1)


pow2 b 0 = 1
pow2 1 e = 1
pow2 b 2 = b * b
pow2 b e = (pow2 (pow2 b (div e 2)) 2)  * (if (mod e 2 == 0) then 1 else b)


pow3 b e = if e < 0 then error "Exponent can not be negative." else pow3acc b e 1
pow3acc b 0 acc = acc
pow3acc b e acc = pow3acc b (e - 1) b*acc


biSec a b r e
    |b - a == 1 = a 
    |pow3 mid e > r = biSec a mid r e
    |otherwise = biSec mid b r e
        where mid = (div (b + a) 2)
root e r = biSec 1 r r e

isPrime x = [y | y <- [2..(root 2 x)], mod x y == 0] == []