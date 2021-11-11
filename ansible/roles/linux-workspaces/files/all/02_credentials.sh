#!/bin/bash

# TODO:
#    - Show information dialog first, describing what a credential file is.
#      Ability to continue or hit cancel.
#
credentials=$(zenity --file-selection \
                     --title "Please select the credenitals package to install" \
                     --file-filter="*.tgz")
# read -p "Please enter the path to your credentials TGZ." credentials
# Use text-based dialog commands when the command is not running on X.

if [[ $? == 0 ]]; then
   cd ~ || exit
   tar xvzf "${credentials}"
elif [[ $? == 1 ]]; then 
   echo "User interruption, skipping credentials install."
fi
