# Docker container for Scanpy and Jupyter

[![Docker Hub](https://img.shields.io/docker/v/naotokubota/scanpy_jupyter?label=Docker%20Hub)](https://hub.docker.com/r/naotokubota/scanpy_jupyter)

Dockerfile for [Scanpy](https://scanpy.readthedocs.io/en/stable/index.html) and Jupyter.

It's on [dockerhub](https://hub.docker.com/r/naotokubota/scanpy_jupyter) and [github](https://github.com/NaotoKubota/scanpy_jupyter).

## tags and links

- `1.3.8` [(master/Dockerfile)](https://github.com/NaotoKubota/scanpy_jupyter/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/scanpy_jupyter:1.3.8
```

or

```sh
git clone git@github.com:NaotoKubota/scanpy_jupyter.git
cd scanpy_jupyter
docker build --rm -t naotokubota/scanpy_jupyter:1.3.8 .
```

## running

```sh
docker run --rm -v `pwd`:/home/jovyan/work -p 10000:8888 naotokubota/scanpy_jupyter:1.3.8
```

Copy token, access `localhost:10000` on your local browser, and paste token.
