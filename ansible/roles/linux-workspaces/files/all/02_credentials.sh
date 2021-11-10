#!/bin/bash

read -p "Please enter the path to your credentials TGZ." credentials
cd ~ || exit
tar xvzf "${credentials}"
