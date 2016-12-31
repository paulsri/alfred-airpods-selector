# alfred-airpods-selector
Use Alfred to Switch Between AirPods and Default Audio Sources on macOS

## deps

Install [Alfred](https://www.alfredapp.com).

Install [switchaudio-osx](https://github.com/deweller/switchaudio-osx):

```
$ brew install switchaudio-osx
```

## setup and configuration

1. Import the Alfred [alfred-airpods-selector](https://github.com/paulsri/alfred-airpods-selector/blob/master/AirPods%20Selector.alfredworkflow) workflow by double-clicking the workflow file after downloading it.
1. Find your audio device names:

        $ SwitchAudioSource -a

1. In the Alfred workflow tab update the bash script (2nd block in workflow) with the names of your audio devices from step #2 as well as the path to where SwitchAudioSource was installed:

        switch="/usr/local/bin/SwitchAudioSource"
        airpods="Paul’s AirPods"
        mic="Built-in Microphone"
        output="Built-in Output"

_**Warning:** Sometimes curly apostrophes or curly double quotes can get you into trouble_

## usage

In Alfred type the following:

> To Enable AirPods:
> `airpods` or `airpods on` or `airpods blah`

> To Disable AirPods:
> `airpods off`

*Note: You can type anythning after 'airpods' except 'off' to enable the AirPods audio source.*


