require './lib/game.rb'
require './lib/player.rb'

game = Game.new(Player.new("Daniel"))

game.player.choice("Rock")
game.computers_choice
