#!/bin/bash

plugindir=$HOME/.config/plex/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/

if [ ! -d "$HOME/.config/plex/" ];
then
    echo "Plex is not installed. Exiting..."
    exit
fi

if [[ -d "$plugindir/ThePornDB.bundle" ]];
then
    echo "ThePornDB found. Upgrading..."
    cd "$plugindir/ThePornDB.bundle" || exit
    git pull
    app-plex restart
    sleep 15
    echo "ThePornDB Upgraded."
    exit
else
    echo "Installing ThePornDB..."
    cd "$plugindir" || exit
    git clone https://github.com/ThePornDatabase/ThePornDB.bundle.git
    app-plex restart
    sleep 15
    echo "ThePornDB installed."
    exit
fi
