# Nsqd for Amazon ECS
ECS optimized nsqd image.

## Problem
When you use official `nsqio/nsqd` image to instanciate nsqd container in Amazon ECS you should provide command 
`-broadcast-address` to proper register nsqd in nsqlookupd. But you don't know which EC2 instance will be used to host
your container.

## Solution
Our Dockerfile overrides standard container ENTRYPOINT to dynamicly retrieve public ip address of the container and start
nsqd with proper `-broadcast-address` flag.
