#!/bin/sh
HOST=`cat ~/.xhost`
CURRDIR=${PWD#$HOME/}
OPTS="-a -v --delete -e ssh --exclude '*.pyc' --exclude '*.swp' --exclude '*.swo'"

# Synchronize sources
echo rsync $OPTS . $HOST:$CURRDIR
eval rsync $OPTS . $HOST:$CURRDIR
