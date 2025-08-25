FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  vim \
  git \
  wget \
  curl \
  cmake \
  build-essential \
  libboost-dev \
  autoconf \
  libtool \
  pkg-config \
  unzip \
  git-lfs \
  python3-pip \
  python3-venv

WORKDIR /mjx
RUN git clone --recursive https://github.com/akinoria/mjx.git .
COPY setup.py .