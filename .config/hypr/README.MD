# Hyprland config documentation

## Font used in config is Hack Nerd Font Mono

## Apps that need to be installed

```
yay -S hyprland hyprpolkitagent network-manager-applet ghostty dolphin tofi waybar dunst xdg-desktop-portal-hyprland qt5-wayland qt6-wayland hyprpaper hyprlock hyprland-per-window-layout eww obs-studio hyprpicker hyprshot udiskie pipewire pipewire-audio wireplumber pipewire-pulse pipewire-alsa pipewire-jack pavucontrol bluez bluez-utils blueman power-profiles-daemon --needed 
```

## To enable bluetooth run 
```
sudo systemctl enable --now bluetooth
```

Also install some [polkit agent](https://wiki.hyprland.org/Hypr-Ecosystem/hyprpolkitagent/)

## Machine-specific configs (monitors, etc.) live in `configs/local/` and are auto-included via a glob require, no script needed.
