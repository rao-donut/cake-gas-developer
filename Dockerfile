FROM ubuntu:latest

RUN apt-get update && \
  apt-get install -y \
  nodejs \
  npm \
  curl \
  git \
  vim \
  sudo

RUN npm install n -g

RUN n stable

RUN apt-get purge -y nodejs

RUN npm install @google/clasp -g

ARG GAS_UID=1000
ARG GAS_USER=gas
ARG GAS_PASSWORD=gas
RUN useradd -m \
  --uid ${GAS_UID} --groups sudo ${GAS_USER} \
  && echo ${GAS_USER}:${GAS_PASSWORD} | chpasswd

USER ${GAS_USER}

WORKDIR /home/${GAS_USER}/workspace

