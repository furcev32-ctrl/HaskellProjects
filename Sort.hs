module Sort where

insert e [] = [e]
insert e (x:xs)
    | e < x = e:x:xs
    | otherwise = x : (insert e xs)

insertSort [] = []
insertSort l = insertSortAcc l []
insertSortAcc (x:xs) acc
    | xs == [] = insert x acc
    | otherwise = insertSortAcc xs (insert x acc)


merge [] y = y
merge (x:xs) y = merge xs (insert x y) 


spliter l = spliterAcc [] l 
spliterAcc acc (x:xs)
    | xs == [] = [x]:acc 
    | otherwise = spliterAcc ([x]:acc) xs

mergeSort [] = []
mergeSort l = mergeSortAcc l []

mergeSortAcc l:ls acc
    | ls==[] = merge acc [l]
    | otherwise merge [l] 


