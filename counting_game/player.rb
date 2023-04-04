module Player

    class Player

  attr_accessor :turn, :lives

  def initialize(turn)
    @turn = turn
    @lives = 3
  end

  def score
    puts "Player #{turn}: #{lives} lives remaining."
  end

  def lost
    lives == 0
    end

  end
end

#test prompts
require_relative 'player'

player1 = Player::Player.new(1)
player2 = Player::Player.new(2)

puts player1.turn
puts player2.turn

puts player2.lives

player1.score
player1.lives -= 1

puts "Player #{player1.turn}: has #{player1.lives} lives"
