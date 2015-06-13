# Author: Kevin McLoughlin

# what has a plateau got?
# - a size
# --> an 'x' value
# --> a 'y' value

class Plateau
  attr_accessor :plateau_name, :plateau_x, :plateau_y

  def initialize(plateau_name, plateau_x, plateau_y)
    @plateau_name = plateau_name
    @plateau_x = plateau_x
    @plateau_y = plateau_y
  end
end