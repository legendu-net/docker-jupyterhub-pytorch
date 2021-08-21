# NAME: dclong/jupyterhub-pytorch
FROM dclong/jupyterhub-cuda_b
# GIT: https://github.com/dclong/docker-jupyterhub-cuda_b.git

RUN xinstall pytorch -ic --cuda 11.1 --pip-option "no-cache-dir"
