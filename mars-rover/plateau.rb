# Author: Kevin McLoughlin

class Plateau
  attr_accessor :plateau_name, :plateau_x, :plateau_y

  def initialize(plateau_name, plateau_x, plateau_y)
    @plateau_name = plateau_name
    @plateau_x = plateau_x
    @plateau_y = plateau_y
  end

  def show_plateau
    "#{@plateau_name}: x = #{@plateau_x}, y = #{@plateau_y}"
  end
end