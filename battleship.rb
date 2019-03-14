class Battleship
  attr_reader :name, :length
  
  def initialize(name)
    @name = name
    @length = get_length
    @sunk = false
    @placed = false
    @orientation = 0
    @x_coordinate = 0
    @y_coordinate = 0
    @name
  end

  def get_length
    case @name
    when "Carrier"
      5
    when "Battleship"
      4
    when "Cruiser" 
      3
    when "Submarine"
      3
    when "Destroyer"
      2
    end
  end
end

