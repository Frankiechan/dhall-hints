--Define a List

[1, 2, 3]

-- Use list prelude function:
let Prelude = https://prelude.dhall-lang.org/package.dhall

let Volume = {
    name: Text,
    path: Text
}

let Deployment = {
    Type = {
        image: Text,
        replicas: Natural,
        volumes: List Volume
    },
    default = {=}
}



in Deployment::{
    image ="app",
    replicas = 2,
    volumes = 
        Prelude.List.map 
        Text
        Volume
        (\(t: Text) -> {name= t, path= "/appspace/${t}"})
        ["tmp", "heapdump"]
}

--Output:
-- image: app
-- replicas: 2
-- volumes:
--   - name: tmp
--     path: /appspace/tmp
--   - name: heapdump
--     path: /appspace/heapdump