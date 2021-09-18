# dclong/jupyterhub-pytorch [@DockerHub](https://hub.docker.com/r/dclong/jupyterhub-pytorch/) | [@GitHub](https://github.com/dclong/docker-jupyterhub-pytorch)

JupyterHub with PyTorch (GPU/CUDA enabled) in Docker.

## Prerequisite
You need to [install Docker](http://www.legendu.net/en/blog/docker-installation/) before you use this Docker image.

## Usage in Linux/Unix

Please refer to the Section
[Usage](http://www.legendu.net/en/blog/my-docker-images/#usage)
of the post [My Docker Images](http://www.legendu.net/en/blog/my-docker-images/) 
for detailed instruction on how to use the Docker image.

The following command starts a container 
and mounts the current working directory and `/home` on the host machine 
to `/workdir` and `/home_host` in the container respectively.
```
docker run -d --init \
    --hostname jupyterhub-pytorch \
    --log-opt max-size=50m \
    -p 8000:8000 \
    --gpus all \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    dclong/jupyterhub-pytorch /scripts/sys/init.sh
```
The following command (only works on Linux) does the same as the above one 
except that it limits the use of CPU and memory.
```
docker run -d --init \
    --hostname jupyterhub-pytorch \
    --log-opt max-size=50m \
    --memory=$(($(head -n 1 /proc/meminfo | awk '{print $2}') * 4 / 5))k \
    --cpus=$(($(nproc) - 1)) \
    -p 8000:8000 \
    --gpus all \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    dclong/jupyterhub-pytorch /scripts/sys/init.sh
```

## [Get the Token for Login](http://www.legendu.net/en/blog/my-docker-images/#get-information-of-running-jupyterlab-servers) 

## [Log Information](http://www.legendu.net/en/blog/my-docker-images/#docker-container-logs)

## [Detailed Information](http://www.legendu.net/en/blog/my-docker-images/#list-of-images-and-detailed-information) 

## [Known Issues](http://www.legendu.net/en/blog/my-docker-images/#known-issues)

## [About the Author](http://www.legendu.net/pages/about)
