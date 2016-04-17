#!/bin/bash
echo "Ghost keyboard annoying thing"
echo "-----------------------------"
echo "To stop this script, type 'killall ruby' into your Terminal. Debug/info output will be logged inside this folder in the file '.keyboard.out'"
echo "Setting things up..."
chmod 755 ./keyboard.rb
nohup ./keyboard.rb > .keyboard.out &
echo "Script is now being run... goodbye!"
osascript -e 'tell application "Terminal" to quit'