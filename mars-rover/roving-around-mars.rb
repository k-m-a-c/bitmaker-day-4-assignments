# Author: Kevin McLoughlin

require_relative('rover.rb')
require_relative('plateau.rb')

# create a plateau
mars_plateau = Plateau.new("terminal moraine", 5, 5)
mars_plateau.show_plateau

# create a couple rovers
rover_1 = Rover.new("rover-1", 1, 2, "N")
rover_2 = Rover.new("rover-2", 3, 3, "E")

# show where the rovers are
rover_1.show_position
rover_2.show_position

# move the rovers
rover_1.execute_instructions("LMLMLMLMM")
rover_2.execute_instructions("MMRMMRMRRM")
