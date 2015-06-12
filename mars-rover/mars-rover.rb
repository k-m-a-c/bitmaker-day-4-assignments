# Author: Kevin McLoughlin
#
# Exercise 2: rovin' around Mars

# A rover can move, turn left and right, and show you where it is.

require_relative('navigation.rb')

class Rover
  include Navigation

  attr_reader :name, :x, :y, :heading
  # include Navigation
  # include Movement

  def initialize (name, x, y, heading)
    @name = name
    @x = x
    @y = y
    @heading = heading
  end

  def move
    change_in_x, change_in_y = DIRECTIONS[@heading]

    @x += change_in_x
    @y += change_in_y

  end

  def execute_instructions(instructions)

    case instructions
    when "M"
      move
    when "R"
      turn_right
    when "L"
      turn_left
    end
    puts "#{@name}: [MOVED TO] #{@heading} #{@x} #{@y}"
  end

  def show_position
    puts "#{@name}: #{@heading} #{@x} #{@y}"
  end


end

rover_1 = Rover.new("Rover #1", 9, 9, "S")
rover_2 = Rover.new("Rover #2", 0, 0, "N")

rover_1.show_position
rover_2.show_position

instructions = "RML"

instructions.each_char do |instruction|
  rover_1.execute_instructions(instruction)
end

instructions.each_char do |instruction|
  rover_2.execute_instructions(instruction)
end




