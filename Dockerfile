# NAME: dclong/jupyterhub-pytorch
FROM dclong/jupyterhub-cuda
# GIT: https://github.com/dclong/docker-jupyterhub-cuda_b.git

RUN pip3 install loguru \
    && xinstall pytorch -ic --cuda 11.1 \
    && /scripts/sys/purge_cache.sh
