#!/bin/bash
echo "Mouse twitch annoyance thing"
echo "----------------------------"
echo "To stop this script, type 'killall ruby' into your Terminal. Debug/info output will be logged inside this folder in the file '.mouse.out'"
echo "Setting things up..."
gem install rumouse
chmod 755 ./mouse.rb
nohup ./mouse.rb > .mouse.out &
echo "Script is now being run... goodbye!"
osascript -e 'tell application "Terminal" to quit'