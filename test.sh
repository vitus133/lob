#!/bin/sh
  
set -euo pipefail
echo "###################################"
echo "Script to enable rt kernel"
echo "###################################"
    
KERNEL_VER="4.18.0-193.31.1.rt13.81.el8_2.ocptest.x86_64"
TEMPDIR=.

# Fetch required packages
WEBROOT_RT="https://media.githubusercontent.com/media/vitus133/blob/main/"
for package in 'core' 'modules' 'modules-extra'; do
  curl -sk ${WEBROOT_RT}/kernel-rt-${package}-${KERNEL_VER}.rpm -o kernel-rt-${package}-${KERNEL_VER}.rpm
done
