#!/bin/sh
  
set -euo pipefail
echo "###################################"
echo "Script to enable rt kernel"
echo "###################################"
    
KERNEL_VER="4.18.0-193.31.1.rt13.81.el8_2.ocptest.x86_64"
TEMPDIR=$(mktemp -d)


# Fetch required packages
WEBROOT_RT="https://media.githubusercontent.com/media/vitus133/lob/master"
for package in 'core' 'modules' 'modules-extra'; do
  curl -s ${WEBROOT_RT}/kernel-rt-${package}-${KERNEL_VER}.rpm -o ${TEMPDIR}/kernel-rt-${package}-${KERNEL_VER}.rpm
done

ls -al $TEMPDIR/

rm -rf $TEMPDIR
