#!/bin/bash
echo "Keystroke vomit annoyance thing + mouse twitch annoyance thing"
echo "(you're a god damned monster if you're doing this right now..)"
echo "--------------------------------------------------------------"
echo "To stop this script, type 'killall ruby' into your Terminal. Debug/info output will be logged inside this folder in the files '.keyboard.out' and '.mouse.out'"
echo "Setting things up..."
chmod 755 ./keyboard.rb
nohup ./keyboard.rb > .keyboard.out &
gem install rumouse
chmod 755 ./mouse.rb
nohup ./mouse.rb > .mouse.out &
echo "Scripts are now being run... goodbye!"
osascript -e 'tell application "Terminal" to quit'