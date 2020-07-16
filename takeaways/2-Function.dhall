-- Define Functions 
-- let func1 = \(input: InputType) -> output

-- A Concreted Example:
-- Don't need to sepecify the output type
let num2Array = \(num: Natural) -> [num]

-- Mutiple inputs
let nums2Array = 
    \(num1: Natural) ->
    \(num2: Natural) ->
    [num1, num2]

-- apply func

let L1 = nums2Array 1 2

-- order is important for the input
let deployment = 
 \(image: Text) ->
 \(replicas: Natural) ->
 "image with replicas: ${Natural/show replicas}"

 let d1 =  deployment "app" 2 -- complied
 let d2 =  deployment 2 "app" -- error
