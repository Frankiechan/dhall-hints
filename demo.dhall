let Prelude =
      https://prelude.dhall-lang.org/package.dhall sha256:10db3c919c25e9046833df897a8ffe2701dc390fa0893d958c3430524be5a43e

let K8s = https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/v4.0.0/package.dhall

let name = "nginx"
let x = K8s.Deployment::{
    metadata = K8s.ObjectMeta::{name = name}
    , spec = Some K8s.DeploymentSpec::{
        replicas = Some 2
        ,selector = K8s.LabelSelector::{
            matchLabels = Some  (toMap { name = name })
        }
        ,template = K8s.PodTemplateSpec::{
            metadata = K8s.ObjectMeta::{name = name}
            , spec = Some K8s.PodSpec::{
                containers = [ K8s.Container::{
                    image = Some "nginx:1.15.3"
                    ,name = name
                    , ports = Some [ K8s.ContainerPort::{
                        containerPort = 80
                    }]
                }]
            }
        }    
    }
}

in x