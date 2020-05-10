#!/bin/bash
################################################################################
# Clean up after provisioning.
#
# Created by Sandor Juhasz, 2020
################################################################################

echo "Removing cached .deb package files"
sudo apt-get clean

