#!/bin/bash
set -x
cd /home/middleman/foss/gnu-efi.git
pwd
echo USER=$USER
echo HOME=$HOME
echo PATH=$PATH
echo SSH_AUTH_SOCK=$SSH_AUTH_SOCK
echo SSH_AGENT_PID=$SSH_AGENT_PID
#git update-mirror-gnu-efi
git fetch origin
git push github

