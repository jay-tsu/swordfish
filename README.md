# Swordfish Docker Container

## What Swordfish Docker Container is?
In order to support SNIA Swordfish Plugfest, a Swordfish Docker image is published in Docker Hub by Dell/EMC MidRange Storage division.
The user can search and download this docker image **xuj10/emc_swordfish**, and run it in a Docker container.

**NOTE:** Currently, the docker image **emc_swordfish** only support Linux platform because it bases on docker image **java**.

## Where to get Swordfish Docker image
```
docker search xuj10/emc_swordfish
docker pull xuj10/emc_swordfish
```

## Run Swordfish Web Servcie
 ```
docker run -p 8080:8080 -t xuj10/emc_swordfish
```

## URIs supported by Swordfish Docker Container
[Sample URIs supported by Swordfish provider](sample.md)
