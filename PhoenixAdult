#!/bin/bash

plugindir=$HOME/.config/plex/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/

if [ ! -d "$HOME/.config/plex/" ];
then
    echo "Plex is not installed. Exiting..."
    exit
fi

if [[ -d "$plugindir/PhoenixAdult.bundle" ]];
then
    echo "PhoenixAdult found. Upgrading..."
    cd "$plugindir/PhoenixAdult.bundle" || exit
    git pull
    app-plex restart
    sleep 15
    echo "PhoenixAdult Upgraded."
    exit
else
    echo "Installing PhoenixAdult..."
    cd "$plugindir" || exit
    git clone https://github.com/PAhelper/PhoenixAdult.bundle.git
    app-plex restart
    sleep 15
    echo "PhoenixAdult installed."
    exit
fi
