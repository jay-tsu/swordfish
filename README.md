# Swordfish Docker Container

## What Swordfish Docker Container is?
In order to support SNIA Swordfish Plugfest, a Swordfish Docker image is published in Docker Hub by Dell/EMC MidRange Storage division.
The user can search and download this docker image **_emc_swordfish_**, and run it in a Docker container.

## Where to get Swordfish Docker image
```
docker search emc_swordfish
docker pull emc_swordfish
```

## Run Swordfish Web Servcie
 ```
docker run -p 8080:8080 -t emc_swordfish
```

## URIs supported by Swordfish Docker Container
[Sample URIs supported by Swordfish provider](sample.md)
