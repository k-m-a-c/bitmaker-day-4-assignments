# Author: Kevin McLoughlin

require_relative('navigation.rb')
require_relative('plateau.rb')

class Rover
  include Navigation

  attr_reader :name, :rover_x, :rover_y, :heading

  def initialize (name, rover_x, rover_y, heading)
    @name = name
    @rover_x = rover_x
    @rover_y = rover_y
    @heading = heading
  end

  def show_position
    puts "<#{@name}>: #{@heading} #{@rover_x} #{@rover_y}"
  end
end