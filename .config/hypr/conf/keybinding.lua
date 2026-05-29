-- Keybindings

local mod = "SUPER"
local resizeStep = "50"
local mediaPositionStep = "15"

local function bind_exec(combo, cmd)
    hl.bind(mod .. " + " .. combo, hl.dsp.exec_cmd(cmd))
end

-- Applications
bind_exec("T", "alacritty")
bind_exec("B", "firefox")
bind_exec("SHIFT + B", "firefox --private-window")
bind_exec("F", "thunar")
bind_exec("N", "obsidian")

-- Rofi
bind_exec("SHIFT + RETURN", "rofi -show drun -replace -i")
bind_exec("SHIFT + V", "cliphist list | rofi -dmenu -theme ~/.config/rofi/cliphist.rasi | cliphist decode | wl-copy")

-- Media buttons
bind_exec("LEFT", "playerctl previous")
bind_exec("RIGHT", "playerctl next")
bind_exec("SHIFT + LEFT", "playerctl position " .. mediaPositionStep .. "-")
bind_exec("SHIFT + RIGHT", "playerctl position " .. mediaPositionStep .. "+")
bind_exec("DOWN", "playerctl play-pause")

-- Window control
