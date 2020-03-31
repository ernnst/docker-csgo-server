#!/bin/sh
cd $HOME/steam
csgo/srcds_run -game csgo -tickrate 128 -autoupdate -steam_dir ~/steam -steamcmd_script ~/steam/csgo_ds.txt $@
