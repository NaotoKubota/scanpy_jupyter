###############################################################
# Dockerfile to build container images for Scanpy and Jupyter
# Based on ubuntu
###############################################################

FROM jupyter/scipy-notebook:notebook-6.4.12

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

ENV DEBIAN_FRONTEND=noninteractive

USER root

# install scanpy
RUN conda install -y -c conda-forge scanpy==1.9.5

RUN conda install -y -c conda-forge python-igraph==0.10.8 leidenalg==0.10.1 pybind11==2.11.1 hnswlib==0.7.0 pynndescent==0.5.10 umap-learn==0.5.4

# install scvelo
RUN conda install -y -c bioconda scvelo==0.2.5

# install harmonypy
RUN conda install -y -c bioconda harmonypy==0.0.9

# install scrublet
RUN conda install -y -c bioconda scrublet==0.2.3

# install phate
RUN conda install -y -c bioconda phate==1.0.11

# install scvi-tools
RUN pip3 install scvi-tools

# Install Arial font
RUN apt update && \
    apt install -y msttcorefonts && \
    wget http://ftp.de.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.8_all.deb && \
    dpkg -i ttf-mscorefonts-installer_3.8_all.deb && \
    fc-cache -fv && \
    rm -rf ttf-mscorefonts-installer_3.8_all.deb

CMD ["bash"]
