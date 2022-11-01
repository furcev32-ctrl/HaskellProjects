
f_a x = x


isEven = (\x -> ((mod x 2) == 0))
f_b isEven y = (isEven y) 

f_c isEven = (isEven == False)