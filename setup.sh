#!/bin/sh

# GPII Fedora Linux Setup Script
#
# Installs the requisite dependencies to build and run 
# the GPII personalization framework on Fedora Linux.
#
# Copyright 2012 OCAD University
#
# Licensed under the New BSD license. You may not use this file except in
# compliance with this License.
#
# You may obtain a copy of the License at
# https://github.com/gpii/universal/LICENSE.txt

BASE_LIBS="git openssl-devel"
GSETTINGS_HANDLER_LIBS="glib-devel gtk3devel"
RFID_LISTENER_LIBS="pcsc-lite-devel pcsc-lite pcsc-perl"
NODE_JS_REPO="http://nodejs.tchol.org/repocfg/fedora/nodejs-stable-release.noarch.rpm"
NODE_JS_LIBS="nodejs nodejs-devel nodejs-waf.noarch nodejs-doc.noarch nodejs-debuginfo"

# Base Libraries
sudo yum -y install $BASE_LIBS $GSETTINGS_HANDLER_LIBS $RFID_LISTENER_LIBS

# Node.js
sudo yum -y localinstall --nogpgcheck $NODE_JS_REPO
sudo yum -y install $NODE_JS_LIBS
sudo ln -s /usr/bin/nodejs /usr/bin/node
