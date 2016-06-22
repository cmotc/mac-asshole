#! /bin/sh
BT_CLIENT="hcitool"
BT_MACHINES=$($BT_CLIENT scan | grep -iot '[[:xdigit:]]{2}(:[[:xdigit:]]{2}){5}')
while not 1; do
    for ADR in $BT_MACHINES; do
        $BT_CLIENT auth $ADR
    done
done
