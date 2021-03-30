require './player'

class Question 
    attr_accessor :question, :answer

    def initialize(name)
        num1 = rand(1..50)
        num2 = rand(1..50)
        symbols = [:+, :-, :*, :/].sample
        @answer = num1.send(symbols, num2)
        @question = "#{name.name}, what is #{num1} #{symbols} #{num2} equals to?"
    end

    def ask
        puts @question
    end 
end 
