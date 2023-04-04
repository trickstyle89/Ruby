class Player

  attr_accessor :name, :lives, :start_lives

  def initialize(name)
    @name = name
    @lives = 3
    @start_lives = 3
  end

  def score
    puts "Player #{self.name} has #{self.lives} lives remaining."
  end

  def display_score
    "#{self.name}: #{self.score}"    
  end

  def reduce_lives
    self.lives -= 1
  end

end
