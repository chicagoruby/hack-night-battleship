require_relative 'space'

class Board
  attr_accessor :grid

  def initialize(input_options)
    @grid = generate_board(input_options[:x_coord], input_options[:y_coord])
  end

  def generate_board(x,y)
    grid = []
    x.times do
      row = []
      y.times do 
        row << Space.new
      end
      grid << row
    end
    grid
  end

  def attack_board
    @grid.each do |row|
      formatted_row = ""
      row.each do |space|
        if space.has_ship && space.attack
          formatted_row += "X "
        elsif space.attack
          formatted_row += "O "
        else
          formatted_row += "_ "
        end
      end
      puts formatted_row
    end
  end

  def your_board
    @grid.each do |row|
      formatted_row = ""
      row.each do |space|
        if space.has_ship && space.attack
          formatted_row += "X "
        elsif space.attack
          formatted_row += "O "
        elsif space.has_ship
          formatted_row += "S "
        else
          formatted_row += "_ "
        end
      end
      puts formatted_row
    end
  end

end

# board = Board.new

board = Board.new(
                  x_coord: 20,
                  y_coord: 20
                  )

board.attack_board