# NAME: dclong/jupyterhub-pytorch
FROM dclong/jupyterhub-cuda_b
# GIT: https://github.com/dclong/docker-jupyterhub-cuda_b.git

RUN xinstall pytorch -ic --cuda 10.2 --pip-option "no-cache-dir"
