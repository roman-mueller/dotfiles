#!/bin/bash

# <bitbar.title>🎧</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author.github>roman-mueller</bitbar.author.github>
# <bitbar.desc>Connect AirPods with a single click</bitbar.desc>

if [ "$1" = "connect" ]; then
  osascript /Users/rmueller/bitbar/airpods_connect.scpt 
  exit 0
elif [ "$1" = "disconnect" ]; then
  osascript /Users/rmueller/bitbar/airpods_disconnect.scpt
  exit 0
fi

echo '🎧'
echo '---'
# Battery level extraction based on https://github.com/duk242/AirPodsBatteryCLI
OUTPUT=''; BLUETOOTH_DEFAULTS=$(defaults read /Library/Preferences/com.apple.Bluetooth); SYSTEM_PROFILER=$(system_profiler SPBluetoothDataType 2>/dev/null)
MAC_ADDR=$(grep -b2 "Minor Type: Headphones"<<<"${SYSTEM_PROFILER}"|awk '/Address/{print $3}')
CONNECTED=$(grep -ia6 "${MAC_ADDR}"<<<"${SYSTEM_PROFILER}"|awk '/Connected: Yes/{print 1}')
BLUETOOTH_DATA=$(grep -ia6 '"'"${MAC_ADDR}"'"'<<<"${BLUETOOTH_DEFAULTS}")
BATTERY_LEVELS=("BatteryPercentCombined" "HeadsetBattery" "BatteryPercentSingle" "BatteryPercentCase" "BatteryPercentLeft" "BatteryPercentRight")

if [[ "${CONNECTED}" ]]; then
  for I in "${BATTERY_LEVELS[@]}"; do
    declare -x "${I}"="$(awk -v pat="${I}" '$0~pat{gsub (";",""); print $3 }'<<<"${BLUETOOTH_DATA}")"
    [[ ! -z "${!I}" ]] && OUTPUT="${OUTPUT} $(awk '/BatteryPercent/{print substr($0,15,1)": "}'<<<"${I}")${!I}%"
  done
  echo "${OUTPUT}"
else
  echo "Not Connected" 
fi
echo "---"
echo "Connect 🎧 | terminal=false bash='$0' param1=connect"
echo "Disconnect 🎧 | terminal=false bash='$0' param1=disconnect"

