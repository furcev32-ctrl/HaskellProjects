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

splitter (l:ls) = splitterAcc [] (l:ls)
splitterAcc acc (x:xs)
    | xs == [] = [x]:acc 
    | otherwise = splitterAcc ([x]:acc) xs

mergeSort [] = []
mergeSort (l) = head (mergePairwise (splitter (l)))
 
mergePairwise (l:m:ls)
    | ls == [] = [merge l m]
    | otherwise = mergePairwise ([merge l m] ++ (ls))
