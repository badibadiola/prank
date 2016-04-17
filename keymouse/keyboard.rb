#!/usr/bin/env ruby

# how many letters it can type at first
range = 0

while true
	range += 3

	o = [('a'..'z'), ('A'..'Z'), (0...9)].map { |i| i.to_a }.flatten
	strokes = (0...range).map { o[rand(o.length)] }

	strokes.each do |i|
		`
		osascript -e 'tell application "System Events" to keystroke "#{i}"'
		`
	end

	puts "\nStrokes Allowed: #{range}\n-------------------------------------------"
	puts "keystroke: #{strokes.join}"
	puts "-------------------------------------------"

	sleep(rand(20...40))
end