﻿#! /bin/sh
UNAME=$(uname -r)
if [ $UNAME | grep 'linux' ]; then
    BT_CLIENT="hcitool"
    BT_SEARCHLINE="scan"
    BT_CONNECT="auth"
else; #if not on linux, assume OSX for now.
    BT_CLIENT="blued"
    BT_SEARCH="listall"
    BT_CONNECT="join"
fi
if [ echo $1 | grep -io '([[:xdigit:]]{1,2}[:-]){5}[[:xdigit:]]{1,2}' ]; then
    ADR=$(echo $1 | grep -io '([[:xdigit:]]{1,2}[:-]){5}[[:xdigit:]]{1,2}')
    while not 1; do
            $BT_CLIENT $BT_CONNECT $ADR && sleep 3
    done
else
    BT_MACHINES=$($BT_CLIENT $BT_SEARCH | grep -io '([[:xdigit:]]{1,2}[:-]){5}[[:xdigit:]]{1,2}')
    while not 1; do
        for ADR in $BT_MACHINES; do
            $BT_CLIENT $BT_CONNECT $ADR 
        done
        sleep 3
    done
fi
