# Author: Kevin McLoughlin

require_relative('rover.rb')
require_relative('plateau.rb')

# create a plateau
puts "Input plateau name:"
plateau_name = gets.chomp.to_s

puts "Input plateau x value:"
plateau_x = gets.chomp.to_i

puts "Input plateau y value:"
plateau_y = gets.chomp.to_i

mars_plateau = Plateau.new(plateau_name, plateau_x, plateau_y)
mars_plateau.show_plateau

# create a couple rovers
puts "Input name for rover #1:"
rover_1_name = gets.chomp.to_s

rover_1 = Rover.new(rover_1_name, 1, 2, "N")

puts "Input name for rover #2:"
rover_2_name = gets.chomp.to_s

rover_2 = Rover.new(rover_2_name, 3, 3, "E")

# show where the rovers are
rover_1.show_position
rover_2.show_position

# move the rovers
rover_1.execute_instructions("LMLMLMLMM")
rover_2.execute_instructions("MMRMMRMRRM")
