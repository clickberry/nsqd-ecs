# Nsqd for Amazon ECS
ECS optimized nsqd image.

## Problem
When you use official `nsqio/nsqd` image to instanciate nsqd container in Amazon ECS you should provide command 
`-broadcast-address` to proper register nsqd in nsqlookupd. But you don't know which EC2 instance will be used to host
your container.

## Solution
Our Dockerfile overrides standard container `ENTRYPOINT` to dynamically retrieve public ip address of the container and start
nsqd with proper `-broadcast-address` flag. So you can create ECS service based on the `clickberry/nsqd-ecs` image and scale it safely, because all instantiated docker containers will set propert `-broadcast-address` automatically for you. Enjoy! 
