# Author: Kevin McLoughlin
#
# Exercise 2: rovin' around Mars

require_relative('navigation.rb')

class Rover
  include Navigation

  attr_reader :name, :x, :y, :heading

  def initialize (name, x, y, heading)
    @name = name
    @x = x
    @y = y
    @heading = heading
  end

  def move
    # change the rover's position by adding the current values of the x and y
    # instance variables, to the product of the 'speed' and the x and y variables
    # local to the DIRECTIONS constant in the Navigation module

    change_in_x, change_in_y = DIRECTIONS[@heading.to_sym]

    speed = 1 # how fast the rover will move

    @x += (change_in_x * speed)
    @y += (change_in_y * speed)
  end

  def execute_instructions(instructions)

    # parse a string on the individual character and interpret it as an instruction
    instructions.each_char do |instruction|

      # define what the rover should do for each individual instruction it receives
      case instruction
      when "M"
        move
      when "R"
        turn_right
      when "L"
        turn_left
      end
      puts "<#{@name}>: [MOVED TO] #{@heading} #{@x} #{@y}"
    end

  end

  def show_position
    puts "<#{@name}>: #{@heading} #{@x} #{@y}"
  end
end

# create a couple rovers
rover_1 = Rover.new("rover-1", 1, 2, "N")
rover_2 = Rover.new("rover-2", 3, 3, "E")

# show where the rovers are
rover_1.show_position
rover_2.show_position

# move the rovers
rover_1.execute_instructions("LMLMLMLMM")
rover_2.execute_instructions("MMRMMRMRRM")
