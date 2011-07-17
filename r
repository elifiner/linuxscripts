
#!/bin/sh

# Sync local source dir to server
OPTS="-a -v --delete -e ssh --exclude '*.pyc' --exclude '.git' $@"

subdir=${PWD#$HOME/}

cmd="ssh $HOST mkdir -p $subdir"
echo $cmd
eval $cmd

cmd="rsync $OPTS $HOME/$subdir/ $HOST:$subdir/"
echo $cmd
eval $cmd
