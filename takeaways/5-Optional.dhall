-- Pattern Match

let PatternMatchOnOptional = 
    \(maybeDeployment: Optional Text) -> 
    merge {
        Some = \(input: Text) -> input,
        None = "None Deployment" 
    } maybeDeployment

let some = Some "app"
let none = None Text

-- PatternMatchOnOptional some :  app
-- PatternMatchOnOptional none :  None Deployment

-- When using None, we have to mention the Type for it
-- e.g. None Text; None Natural;
-- Otherwise the compile will fail due to imcompletion