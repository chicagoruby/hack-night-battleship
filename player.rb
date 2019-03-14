require_relative 'battleship'

class Player
  attr_accessor :unplaced_ships

  def initialize
    @unplaced_ships = [Battleship.new("Carrier"), Battleship.new("Battleship"), Battleship.new("Submarine"), Battleship.new("Cruiser"), Battleship.new("Destroyer")]
  end

  def place_ship
    puts "What row would you like to place your"
  end
end

player = Player.new
p player.unplaced_ships

