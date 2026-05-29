-- Monitors -------------------------------------------

-- Laptop internal display
hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@60",
    position = "1080x0",
    scale = 1
})

hl.monitor({
    output = "HDMI-A-2",
    mode = "1920x1080@60",
    position = "0x0",
    -- transform = 0,
    scale = 1
})

-- External configuration -----------------------------
require("conf.autostart")
require("conf.keyboard")
require("conf.keybinding")
require("conf.windowrules")
-- Plugins --------------------------------------------


-- Window layout and colors ---------------------------
-- Layouts --------------------------------------------


-- configuration -----------------------------------------
hl.config({
    general = {
        border_size = 1,
        gaps_in = 0,
        gaps_out = 0,
        col = {
            active_border = rgb(BEAC79),
            inactive_border = rgb(6B413E)
        },
        layout = "master",
        resize_on_border = true,
        extend_border_grab_area = 10,
    },
    decoration = {
        rounding = 0,
        shadow = {
            enabled = true,
            range = 4
        }
    },
    animations = {
        enabled = false
    },
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,

    }
})

-- ENV ------------------------------------------------

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")


hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

hl.env("GDK_BACKEND", "wayland,x11,*")

hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

hl.env("XCURSOR_SIZE", "24")

hl.env("MOZ_ENABLE_WAYLAND", "1")

hl.env("OZONE_PLATFORM", "wayland")

hl.env("APPIMAGELAUNCHER_DISABLE", "1")


