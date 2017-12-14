#!/bin/bash

set -x

sudo apt-get update -y &&
sudo apt-get install -y \
  python-pip \
  python-virtualenv \
  virtualenvwrapper
