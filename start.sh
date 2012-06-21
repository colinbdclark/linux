#!/bin/sh

# GPII Linux Startup Script
#
# Copyright 2012 OCAD University
#
# Licensed under the New BSD license. You may not use this file except in
# compliance with this License.
#
# You may obtain a copy of the License at
# https://github.com/gpii/universal/LICENSE.txt

fileName="gpii.js"
rfidListenerRepoDir="../pcsc-tools"
linuxRepoDir=$PWD

# Start the RFID User Listener
cd $rfidListenerRepoDir
sudo /usr/sbin/pcscd
./pcsc_scan &

# Start the Flow Manager
cd $linuxRepoDir
node "$fileName"
