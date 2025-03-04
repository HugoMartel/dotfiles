# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

## Get OS information
linux_name=$(uname -n)
linux_version=$(uname -r)
if [ $linux_name = "nixos" ]
then
    linux="$linux_name $linux_version "
else
    linux="$linux_name $linux_version 🐧"
fi


## Date information
date_formatted=$(date "+%a %F %H:%M")


## RAM usage
RAM=$(free --giga -h | awk 'NR == 2 { printf "%5.5s/%-5.5s", $3, $2 }')"🐏"


## Network information
network_type=$(nmcli -t -f TYPE connection | head -n 1)
network_name=$(nmcli -t -f NAME connection | head -n 1 | cut -c 1-20)
case $network_type in
  "loopback")
    network="No connection... 󱘖"
    ;;
  "802-11-wireless")
    network="$network_name 󱄙"
    ;;
  *)
    network="$network_name 󰈀"
    ;;
esac


## Battery information
battery_status=$(cat /sys/class/power_supply/BAT0/status)
battery_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
case $battery_status in
  "Charging")
    battery="$battery_capacity% ⚡"
    ;;
  "Full")
    battery="$battery_capacity%🔋"
    ;;
  "Not charging")
    battery="$battery_capacity% 🔋"
    ;;
  "Discharging")
    battery="$battery_capacity% 🔌"
    ;;
  *)
    battery="$battery_capacity% ❗"
    ;;
esac

if [ $battery_capacity -lt 20 ]
then
    # NOTIFY LOW BATTERY ?+ red color?
    # notify-send -h string:fgcolor:#ff0000 "Low Battery..."
    battery="$battery_capacity% 🪫"
fi


## Final Status bar
echo "$linux | $RAM | $network | $battery | $date_formatted"

