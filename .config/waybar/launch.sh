# Check if waybar-disabled file exists
if [ -f $HOME/.cache/waybar-disabled ]; then 
    killall waybar
    pkill waybar
    exit 1 
fi

# ----------------------------------------------------- 
# Quit all running waybar instances
# ----------------------------------------------------- 
killall waybar
pkill waybar
sleep 0.2

# ----------------------------------------------------- 
# Set theme folder and files
# ----------------------------------------------------- 
theme_folder="$HOME/.config/waybar/theme"
config_file="$theme_folder/config"
style_file="$theme_folder/style.css"

# ----------------------------------------------------- 
# Launch Waybar with your theme
# ----------------------------------------------------- 
waybar -c $config_file -s $style_file &