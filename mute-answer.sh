#!/bin/bash

if [ "$1" = "playpause" ];
then
    # play / pause Spotify toggle
    /usr/bin/osascript -e 'tell app "Spotify" to playpause'
elif [ "$1" = "pauseanswer" ];
then
    # pause Spotify
    /usr/bin/osascript -e 'tell app "Spotify" to pause'
    # send shortcut (x + crtl + shift) to mute chrome
    /usr/bin/osascript -e 'tell application "System Events" to keystroke "x" using  {control down, shift down}'
    # answer or hangup call
    ~/work/git/github/mobydick-scripts/md7-AnswerHangup-toggle/togglecall.py
else
    echo 'nothing to do'
fi
