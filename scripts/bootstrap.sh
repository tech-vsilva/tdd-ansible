#!/bin/bash

set -x

mkdir -p ~/ansible/ruby \
&& cd ~/ansible/ruby \
&& virtualenv venv \
&& venv/bin/pip install molecule docker \
&& venv/bin/pip install -U testinfra \
&& venv/bin/pip list --format=legacy | grep testinfra \
&& venv/bin/pip freeze > /synced/pip/requirements.txt

if [[ -f ~/ansible/ruby/venv/bin/activate ]]; then
  if [[ -f ~/.bash_aliases ]]; then
    grep activate ~/.bash_aliases
    does_activate_alias_exist=$( echo $? )
  else
    does_activate_alias_exist=1
  fi
  if [[ "${does_activate_alias_exist}" == 1 ]]; then
    echo 'alias activate="source ~/ansible/ruby/venv/bin/activate"' | tee --append ~/.bash_aliases
  fi
fi

# Verify you have Testinfra 1.6.0 or above
