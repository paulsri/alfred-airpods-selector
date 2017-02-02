toggle=$1

switch="/usr/local/bin/SwitchAudioSource"
airpods1="AirPods Bedroom"
airpods3="AirPods Office"
airpods2="AirPods Travel"
mic="Built-in Microphone"
output="Built-in Output"

if [ $toggle = "off" ]; then
  $switch -t input -s "$mic" > /dev/null 2>&1 && $switch -t output -s "$output" > /dev/null 2>&1
  echo "Disabled"
else
  $switch -t input -s "$airpods1" > /dev/null 2>&1 && $switch -t output -s "$airpods1" > /dev/null 2>&1
  $switch -t input -s "$airpods2" > /dev/null 2>&1 && $switch -t output -s "$airpods2" > /dev/null 2>&1
  $switch -t input -s "$airpods3" > /dev/null 2>&1 && $switch -t output -s "$airpods3" > /dev/null 2>&1
  echo "Enabled"
fi
