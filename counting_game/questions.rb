require 'player.rb'

module questions
    class questions

attr_accessor :answer

   def initialize(answer)
    num1 = rand(1..20)
    num2 = rand(1..20)
    @answer = num1 + num2
   end

def check_answer(player_answer)

    if @answer == player_answer
        puts "That is correct!"
        return true
    else 
        puts "Wrong! The answer was #{@answer}"
        return false
    end

    def display_question
        puts "What is the sum of #{num1} + #{num2} ? "
    end
end






