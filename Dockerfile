# NAME: dclong/jupyterhub-pytorch
FROM dclong/jupyterhub-cuda_b
# GIT: https://github.com/dclong/docker-jupyterhub-cuda_b.git

RUN pip3 install --no-cache-dir \
        torch torchvision
