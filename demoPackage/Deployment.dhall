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

in {Volume, Deployment}