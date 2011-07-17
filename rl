#!/bin/sh

# Sync local source dir to local directory on server

OPTS="-a -v --delete -e ssh --exclude '*.pyc' $@"

subdir=${PWD#$HOME/}
cmd="rsync $OPTS $HOME/$subdir/ $HOST:/local/$USER/$subdir/"
echo $cmd
$cmd
