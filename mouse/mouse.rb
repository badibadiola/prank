#!/usr/bin/env ruby
require "rumouse"

# how much the mouse can move at first
range = 1000
mouse = RuMouse.new

while true
	# increase how much the mouse can move each time max
	range += 250

	# move the mouse a random int between 0 and the range for x and y
	x_change = rand(range)
	y_change = rand(range)

	x_total_movement = 0
	y_total_movement = 0

	movement_pattern = []

	until x_total_movement >= x_change && y_total_movement >= y_change
		case rand(4)
			when 0
				x_step = rand(0.5...1)
				x_total_movement += x_step

				y_step = rand(0.5...1)
				y_total_movement += y_step

				movement_pattern.push("x+ y+")

				mouse.move(mouse.position[:x] += x_step, mouse.position[:y] += y_step)
			when 1
				x_step = rand(0.5...1)
				x_total_movement += x_step

				y_step = rand(0.5...1)
				y_total_movement += y_step

				movement_pattern.push("x- y-")

				mouse.move(mouse.position[:x] -= x_step, mouse.position[:y] -= y_step)
			when 2
				x_step = rand(0.5...1)
				x_total_movement += x_step

				y_step = rand(0.5...1)
				y_total_movement += y_step

				movement_pattern.push("x- y+")

				mouse.move(mouse.position[:x] -= x_step, mouse.position[:y] += y_step)
			when 3
				x_step = rand(0.5...1)
				x_total_movement += x_step

				y_step = rand(0.5...1)
				y_total_movement += y_step

				movement_pattern.push("x+ y-")

				mouse.move(mouse.position[:x] += x_step, mouse.position[:y] -= y_step)
		end
		sleep(rand(0...0.005))
	end

	puts "\nMovement Allowed: #{range}\n-------------------------------------------"
	puts "total movement (xy)"
	puts x_total_movement, y_total_movement, "\n"
	puts "final position (xy)"
	puts mouse.position[:x], mouse.position[:y]
	puts "movement pattern:"
	puts movement_pattern.join(", ")
	puts "-------------------------------------------"


	# sleep for as many seconds as you want
	sleep(rand(30...90))
end