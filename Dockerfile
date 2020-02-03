FROM dclong/jupyterhub-cuda_b

RUN pip3 install --no-cache-dir \
        torch torchvision
