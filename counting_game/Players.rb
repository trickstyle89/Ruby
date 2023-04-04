class Player
    attr_reader :name, :lives, :score
  
    def initialize(name)
      @name = name
      @lives = 3
      @score = 0
    end
  
    def reduce_lives
      @lives -= 1
    end
  
    def increase_score
      @score += 1
    end
  
    def display_score
      "#{name}: #{score} points, #{lives} lives"
    end
  end