toggle=$1

switch="/usr/local/bin/SwitchAudioSource"
airpods="Paul’s AirPods"
mic="Built-in Microphone"
output="Built-in Output"

if [ $toggle = "off" ]; then
  $switch -t input -s "$mic" > /dev/null 2>&1 && $switch -t output -s "$output" > /dev/null 2>&1
  echo "Disabled"
else
  $switch -t input -s "$airpods" > /dev/null 2>&1 && $switch -t output -s "$airpods" > /dev/null 2>&1
  echo "Enabled"
fi
