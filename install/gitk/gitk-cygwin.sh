#!/bin/sh
# Use gitk on Cygwin without X11
# Scripts I used to build:
# github.com/svnpenn/etc/tree/master/install/tcl-tk

# Install Tcl
wget github.com/downloads/svnpenn/etc/tcl-8.5.13.tar.gz
tar xf tcl-8.5.13.tar.gz
cp -r usr /

# Install Tk
wget github.com/downloads/svnpenn/etc/tk-8.5.13.tar.gz
tar xf tk-8.5.13.tar.gz
cp -r usr /

# Install gitk
cd /usr/local/bin
wget raw.github.com/git/git/master/gitk-git/gitk
wget raw.github.com/svnpenn/etc/master/install/gitk/wish
chmod +x gitk wish