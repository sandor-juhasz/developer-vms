#!/bin/bash
################################################################################
# Initial Ansible on the host being provisioned.
#
# Created by Sandor Juhasz, 2020
#
# This script is used to perform the initial provisioning before Ansible can 
# take over the rest of the installation.
################################################################################

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install ansible
sudo mkdir -p /opt/ansible-playbooks
sudo chown developer /opt/ansible-playbooks
sudo chgrp developer /opt/ansible-playbooks
