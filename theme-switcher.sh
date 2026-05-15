ls ~/.config/.themes/
read -p "Pick Theme: " theme
cp -rf ~/.config/.themes/$theme/wofi/ ~/.config/
cp -rf ~/.config/.themes/$theme/hypr ~/.config/
cp -rf ~/.config/.themes/$theme/waybar ~/.config/
cp -rf ~/.config/.themes/$theme/kitty ~/.config/
echo "$theme selected!"
killall hyprpaper
hyprpaper & disown
killall waybar
waybar & disown
pkill kitty
