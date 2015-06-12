module Navigation

  # The list of possible headings
  COMPASS = %w[N E S W]

  # The definition of each heading
  DIRECTIONS = {
      "N" => [0,1],
      "E" => [1,0],
      "S" => [0,-1],
      "W" => [-1,0]
    }

  # Set a heading
  def set_heading(n=1)
    position = COMPASS.index(@heading)
    @heading = COMPASS.rotate(n)[position]
  end

  def turn_right
    set_heading(1)
  end

  def turn_left
    set_heading(-1)
  end
end