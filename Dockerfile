# NAME: dclong/jupyterhub-pytorch
FROM dclong/jupyterhub-cuda
# GIT: https://github.com/dclong/docker-jupyterhub-cuda.git

RUN pip3 install loguru pandas \
    && xinstall pytorch -ic --cuda 11.1 \
    && /scripts/sys/purge_cache.sh
