#!/usr/bin/env bash

STATE_FILE="${XDG_RUNTIME_DIR}/tlp-profile-mode"

get_current_mode() {
    local profile
    profile=$(tlp-stat -s 2>/dev/null | awk -F'= ' '/^TLP profile/ {print $2}')

    if ! echo "$profile" | grep -q '(manual)'; then
        echo "auto"
        return
    fi

    if echo "$profile" | grep -q '/BAT'; then
        echo "bat"
    elif echo "$profile" | grep -q '/AC'; then
        echo "ac"
    else
        # Fallback if format changes
        echo "auto"
    fi
}


cycle_mode() {
    local current
    current=$(get_current_mode)
    case "$current" in
        auto) sudo /usr/bin/tlp bat ;;
        bat)  sudo /usr/bin/tlp ac  ;;
        ac)   sudo /usr/bin/tlp start ;;
    esac
}


if [[ "$1" == "toggle" ]]; then
    cycle_mode
    exit 0
fi

# Output for waybar
mode=$(get_current_mode)
case "$mode" in
    bat)  echo "󰁹 BAT" ;;
    ac)   echo "󰚥 AC"  ;;
    auto) echo "󰂄 Auto" ;;
esac