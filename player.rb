require_relative 'battleship'

class Player
  attr_accessor :unplaced_ships

  def initialize
    @unplaced_ships = [Battleship.new(5), Battleship.new(4), Battleship.new(3), Battleship.new(3), Battleship.new(2)]
  end
end

player = Player.new
p player.unplaced_ships

