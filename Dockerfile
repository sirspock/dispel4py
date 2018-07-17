# Create Ubuntu environment

FROM ubuntu:18.04
MAINTAINER Amy Krause <a.krause@epcc.ed.ac.uk>

RUN apt-get update && apt-get install -y  \
    wget \
    curl \
    python-dev \
    python-pip \
    python-setuptools \
    git \
    openmpi-bin \
    openmpi-common \
    libopenmpi-dev

RUN pip install mpi4py

# install dispel4py latest
RUN pip install git+git://github.com/sirspock/dispel4py.git@master

