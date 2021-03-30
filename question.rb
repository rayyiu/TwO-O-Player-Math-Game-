require './player'

class Question 
    attr_accessor :question, :answer 

    def initialize()
        num1 = rand(1..50)
        num2 = rand(1..50)
        syms = [:+, :-, :*, :/].sample
        answer = num1.send(syms, num2)
        player_query = "#{current_player}, what is #{num1} #{syms} #{num2} equals to?"
    end
end 

