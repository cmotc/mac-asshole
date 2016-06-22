#! /bin/sh
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
BT_MACHINES=$($BT_CLIENT $BT_SEARCH | grep -iot '([[:xdigit:]]{1,2}[:-]){5}[[:xdigit:]]{1,2}')
if [ echo $1 | grep -iot '([[:xdigit:]]{1,2}[:-]){5}[[:xdigit:]]{1,2}' ];
    ADR=$(echo $1 | grep -iot '([[:xdigit:]]{1,2}[:-]){5}[[:xdigit:]]{1,2}')
    while not 1; do
            $BT_CLIENT $BT_CONNECT $ADR
    done
else
    BT_MACHINES=$($BT_CLIENT $BT_SEARCH | grep -iot '([[:xdigit:]]{1,2}[:-]){5}[[:xdigit:]]{1,2}')
    while not 1; do
        for ADR in $BT_MACHINES; do
            $BT_CLIENT $BT_CONNECT $ADR
        done
    done
fi
