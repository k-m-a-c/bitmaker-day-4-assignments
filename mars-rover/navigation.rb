# Author: Kevin McLoughlin

# how do you handle a plateau?
# - not fall off
# --> stop at a certain 'x' value
# --> stop at a certain 'y' value

require_relative('plateau.rb')

module Navigation

  # The list of possible headings
  COMPASS = %w[N E S W]

  # The definition of each heading
  DIRECTIONS = {
      :N => [0,1],
      :E => [1,0],
      :S => [0,-1],
      :W => [-1,0]
    }

  # Set a heading
  def set_heading(n=1)
    heading = COMPASS.index(@heading)
    @heading = COMPASS.rotate(n)[heading]
  end

  def turn_right
    set_heading(1)
  end

  def turn_left
    set_heading(-1)
  end

  def move
    # change the rover's position by adding the current values of the x and y
    # instance variables, to the product of the 'speed' and the x and y variables
    # local to the DIRECTIONS constant in the Navigation module

    change_in_x, change_in_y = DIRECTIONS[@heading.to_sym]

    speed = 1 # how fast the rover will move

    @rover_x += (change_in_x * speed)
    @rover_y += (change_in_y * speed)
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
      else
        puts "Invalid instructions."
      end
      puts "<#{@name}>: [MOVED TO] #{@heading} #{@rover_x} #{@rover_y}"
    end

  end
end