# Swordfish Docker Container

## What Swordfish Docker Container is?
In order to support SNIA Swordfish Plugfest, a Swordfish Docker image is published in Docker Hub by Dell/EMC MidRange Storage Division.
The user can search and download the docker image **xuj10/swordfish**, and then run it in a Docker container.

## Where to get Swordfish Docker image
```
docker search xuj10/swordfish
docker pull xuj10/swordfish
```

## Run Swordfish Web Servcie
 ```
docker run -p 8080:8080 -t xuj10/swordfish
```

## URIs supported by Swordfish Docker Container
[Sample URIs supported by Swordfish provider](sample.md)
