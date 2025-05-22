# Waybar Dotfiles

Welcome to my customized Waybar configuration. This setup is based on and modified from the ML4W (My Linux For Work) configuration. I stitched together several custom modules and tweaks to better match my taste. While it may not be the most professional setup, I hope you find it useful as a starting point!

# ✨ Base Configuration

Origin: Based on the ML4W (My Linux For Work) Waybar setup

Modifications: Includes various community modules and personal scripts for extended functionality and style

# 🔌 Custom Modules & Scripts

Wayves (Cava for Waybar)

Repo: Wayves by jvc84

Audio visualizer embedded in Waybar, powered by Cava

Config located at modules/wayves

Custom Bluetooth Module

Based on bluman

Simple script to show and control Bluetooth status via Waybar

Located at modules/bluetooth-custom.sh

Custom CPU Temperature Script

Uses a Python sensor library (e.g. psutil or sensors bindings)

Displays formatted CPU temperature in Waybar

Located at modules/cpu-temp.sh

# 🎨 Theming with Pywal

Dynamic Colors: No fixed hex values; everything is generated through Pywal

colored/ Folder: Contains the CSS files that use Pywal-generated colors

Reminder: Make sure to run Pywal with a wallpaper before launching Waybar

# 🛠️ Installation & Usage

# 1. Clone the repo
git clone [https://github.com/Yeonz400/waybar.git](https://github.com/Yeonz400/waybar.git) ~/.config/waybar

# 2. Install dependencies
sudo pacman -S waybar cava python-pip bluez-utils
pip install psutil

# 3. Set paths in the scripts
 Edit the interpreter and paths at the top of:
 - modules/bluetooth-custom.sh
 - modules/cpu-temp.sh

# 4. Apply Pywal theme
wal -i /path/to/your/wallpaper.jpg

# 5. Launch Waybar with style
waybar \
  --config ~/.config/waybar/config.json \
  --style ~/.config/waybar/colored/style.css

❗ Disclaimer

I'm not a professional dotfiles maintainer and I know this setup might be a bit chaotic. I'm still learning how to organize everything better, but I wanted to share it anyway.

If you're using Pywal for colors, don't forget to configure your system path so it knows where to find the colored/ folder.

Feel free to modify, improve, or use this as a base for your own config!

Enjoy your customized Waybar! ✨

