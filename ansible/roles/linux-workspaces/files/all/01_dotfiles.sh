#!/bin/bash

echo "Installing dotfiles..."
pushd /opt/dotfiles || exit
./install.sh
echo "Dotfiles have been successfully installed."
popd || exit
