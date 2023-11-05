#!/bin/bash

ID=$(swaymsg -t get_inputs | jq -r '.[] | select(.name | test("(?i)(touchpad|glidepoint)")) | .identifier' | tr -d ':')

if [ -n "$ID" ]; then
    STATE=$(swaymsg -t get_inputs | jq -r ".[] | select(.name | test(\"(?i)(touchpad|glidepoint)\")) | .libinput.send_events")

    if [ "$STATE" == "enabled" ]; then
        swaymsg -t command "input $ID disable"
        # echo "Touchpad disabled."
        makoctl notification --app-name 'Touchpad' --body 'Disabled' --icon input-touchpad
    else
        swaymsg -t command "input $ID enable"
        # echo "Touchpad enabled."
        makoctl notification --app-name 'Touchpad' --body 'Enabled' --icon input-touchpad
    fi
fi
