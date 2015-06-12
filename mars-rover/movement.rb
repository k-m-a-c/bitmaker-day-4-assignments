require_relative('navigation.rb')

module Movement
  include Navigation

  # How to move
  def execute_movement(heading)
    change_in_x, change_in_y = DIRECTIONS[@heading]
    @y += change_in_y
    @x += change_in_x
  end

end