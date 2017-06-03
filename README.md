# Swordfish Docker Container

## What Swordfish Docker Container is?
In order to support SNIA Swordfish Plugfest, a Swordfish Docker image is published in Docker Hub by Dell/EMC MidRange Storage Division.
The user can search and download this docker image **xuj10/emc_swordfish**, and then run it in a Docker container.

**NOTE:** Currently, the docker image **emc_swordfish** only supports Linux platform because it bases on docker image **java**.
Furthermore, you have to install docker engine in your Linux system before getting Swordfish docker image from Docker Hub.

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
