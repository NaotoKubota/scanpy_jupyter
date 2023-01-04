###############################################################
# Dockerfile to build container images for Scanpy and Jupyter
# Based on ubuntu
###############################################################

FROM jupyter/scipy-notebook:notebook-6.4.12

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

ENV DEBIAN_FRONTEND=noninteractive

# install scanpy
RUN conda install -y -c conda-forge scanpy python-igraph leidenalg pybind11 hnswlib && \
    conda install -y -c bioconda scvelo

# install MetBrewer
RUN git clone https://github.com/BlakeRMills/MetBrewer.git && \
    cd MetBrewer/Python/ && \
    python setup.py install