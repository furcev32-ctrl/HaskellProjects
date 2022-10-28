
module Arithmetik (
    pow1,
    pow2,
    pow3
) where
import Prelude
pow1 b 0 = 1
pow1 b e = b * pow1 b (e-1)


pow2 b 0 = 1
pow2 1 e = 1
pow2 b 2 = b * b
pow2 b e = (pow2 (pow2 b (div e 2)) 2)  * (if (mod e 2 == 0) then 1 else b)


pow3 b e = pow3acc b e 1

pow3acc b 0 acc = acc
pow3acc b e acc = pow3acc b (e - 1) b*acc
