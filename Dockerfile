###############################################################
# Dockerfile to build container images for Scanpy and Jupyter
# Based on ubuntu
###############################################################

FROM jupyter/scipy-notebook:latest

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

ENV DEBIAN_FRONTEND=noninteractive

# install scanpy
RUN conda install -y -c conda-forge scanpy python-igraph leidenalg pybind11 hnswlib && \
    conda install -y -c bioconda scvelo
