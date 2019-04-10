# Battleship!

Battleship is a game where two players play on two separate boards and try to sink eachother's battleships. The boards are grids with coordinates and battleships are pieces that occupy one or more spaces on the grid, up to 1 x 5.

![Battleship](http://healthy.uwaterloo.ca/museum/VirtualExhibits/electronic/battery/battleship/Electronic%20Battleship%20(4).JPG)

The grid is identified in the game with lettered rows and numbered columns. One at a time, each player will call out a position to shoot at the other player's board. If the space is occupied by a battleship, that player will make note, and on the next turn check an adjacent location to try to guess the remaining positions of the ship.

Each players starts by positioning the following ships on the board:
- Aircraft Carrier (1): 5 x 1
- Battleship (1): 4 x 1
- Cruiser (1): 3 x 1
- Destryoer (2): 2 x 1
- Submarine (2): 1 x 1

![Battleship board and ships](https://foreignpolicymag.files.wordpress.com/2012/10/battleships8.jpg)

A battleship is sunk when the opposing player guesses all grid locations of one of your battleships. The game is won when all of your opponent's battleships have been sunk.

## Implementation

We are going to build a player to player version of this across a network. This will be a two part challenge: you will need to establish a connection with another player and create the game/UI logic. The idea is that you want to be able to send moves to the other player, and the other player will let you know whether it is a hit or a miss, or whether you sunk one of their ships. 
