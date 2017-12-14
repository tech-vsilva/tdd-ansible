#!/bin/bash

set -x

sudo apt-get update -y &&
sudo apt-get install -y \
  htop \
  tree \
  vim \
  gcc \
  python-pip \
  libssl-dev \
  libffi-dev \
  python-virtualenv \
  virtualenvwrapper
