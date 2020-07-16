-- Define a custom record type
-- Most formal way (define the type and the default value)

let Deployment1 = {
    Type = {
        image: Text,
        replicas: Natural
    },
    default = {=}
}


-- Handy way dfine the type

let Deployment2 = {
    image: Text,
    replicas: Natural
}

-- Construct records complied to the type
let app1 = Deployment1::{image = "app", replicas = 1}
let app2 = {image = "app", replicas = 1}: Deployment1.Type
let app3 = {image = "app", replicas = 1}: Deployment

-- default empty record:
{=}

-- Common Pitfalls:
-- ":" is used to define type/kind, but not value assignement
-- "=" is used to assign value

let aWrongExampleForInstance = Deployment2 {
    image: "app",
    replicas: 2
} 


let aRightExampleForInstance = Deployment2 {
    image = "app",
    replicas = 2
} 
