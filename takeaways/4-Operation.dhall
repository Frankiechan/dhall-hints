-- Combined Records to a new record
{a =1 } /\ {b = 2}  -- {a =1 , b =2 }
{a =1 } /\ {a = 2}  -- throw error that you couldn't combined records with the same key

-- Override fileds in record:
-- Override operation would not mutate the original record
let x = {a = 1 }
x // {a = 2}  -- {a = 2}
x -- {a = 1}

-- Concat two List
[ 1, 2 ] # [ 3, 4 ]  --- [1,2,3,4]
