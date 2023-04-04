class Game
    attr_reader :current_player, :question, :player1, :player2
  
    def initialize(player1_name, player2_name)
      @player1 = Player.new(player1_name)
      @player2 = Player.new(player2_name)
      @question = Question.new
      @current_player = player1
    end
  
    def display_scores
      puts "#{player1.display_score} vs #{player2.display_score}"
    end
  
    def display_question
      puts "#{current_player.name}: #{question.generate_question}"
    end
  
    def switch_player
      @current_player = current_player == player1 ? player2 : player1
    end
  
    def play_round
      display_scores
      question.generate_numbers
      display_question
      answer = gets.chomp.to_i
  
      if question.check_answer(answer)
        puts "That's correct!"
        current_player.increase_score
      else
        puts "Wrong!"
        current_player.reduce_lives
      end
  
      switch_player
    end
  
    def game_over?
      player1.lives == 0 || player2.lives == 0
    end
  
    def display_winner
      if player1.score > player2.score
        puts "#{player1.name} wins!"
      elsif player2.score > player1.score
        puts "#{player2.name} wins!"
      else
        puts "It's a tie!"
      end
    end
  
    def play_game
      until game_over?
        play_round
      end
  
      display_scores
      display_winner
    end
  end