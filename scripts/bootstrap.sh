#!/bin/bash

set -x

mkdir -p ~/ansible/ruby \
&& cd ~/ansible/ruby \
&& virtualenv venv \
&& source venv/bin/activate \
&& pip install molecule docker \
&& pip install -U testinfra \
&& pip list --format=legacy | grep testinfra \
&& pip freeze > /synced/pip/requirements.txt

# Verify you have Testinfra 1.6.0 or above
