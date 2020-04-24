#!/bin/bash
execId=$1
shift
git "$@" > /home/marek/bin/git_wrapper/out_$execId.txt
touch /home/marek/bin/git_wrapper/lock_$execId.txt