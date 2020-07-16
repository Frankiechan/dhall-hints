-- if condition then outputForTrue else outputForFalse

-- Example:
let func1 = 
    \(replicas: Natural) -> 
    \(image: Text) ->
    if (Natural/isZero replicas) then None Text else Some (image)

-- fun1 0 "app" : None
-- fun1 1 "app" : Some "app"