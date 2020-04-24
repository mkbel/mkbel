#!/bin/bash
git "$@" > /home/marek/bin/git_wrapper/out.txt
touch /home/marek/bin/git_wrapper/lock.txt