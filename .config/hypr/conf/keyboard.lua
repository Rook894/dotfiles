-- Keyboard layout ------------------------------------
hl.config({
    input = {
        kb_layout = "us, ru",
        kb_options = "grp:shifts_toggle",
        numlock_by_default = true,
        follow_mouse = 1,
        natural_scroll = true,
        sensitivity = 1
    }
})

-- Touchscreen
hl.device({
    name = "raydium-corporation-raydium-touch-system",
    enabled = 0
})

-- Touchpad
hl.device({
    name = "synaptics-tm3276-022",
    enabled = 0
})

-- Trackpoint
hl.device({
    name = "tpps/2-ibm-trackpoint",
    sensitivity = 0.0
})