require './Player'
require './Question'

questions = Questions.new
p1 = Player.new("Player 1")
p2 = Player.new("Player 2")

questions.start_game(p1, p2)