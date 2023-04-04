require './Game'
require './Questions'
require './Players'

puts "Welcome to the two-player math game!"
print "Enter player 1's name: "
player1_name = gets.chomp
print "Enter player 2's name: "
player2_name = gets.chomp

game = Game.new(player1_name, player2_name)
game.play_game