#!/bin/bash

#set -e

cd /srv/git/mapstory/storyscapes
. /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# this can fail due to wsgi file locking
if [ ! -e /home/mapstory/.virtualenvs/mapstory ]; then
    mkvirtualenv -a /srv/git/mapstory/storyscapes --system-site-packages /home/mapstory/.virtualenvs/mapstory
fi
