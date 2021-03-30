require './player'
require './question'

class Game 
    attr_accessor :current_player
    
    def initialize 
    puts "\n GAME STARTING"    
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1 
    puts "\n Current Player is #{@current_player.name}\n"
    play()
    end
    # question = Question.new
    # player_guess = gets.chomp.to_i
    # print "#{current_player.name}, what is #{question.player_query}"
    
        
    def play
        loop do 
           question = Question.new
           player_guess = gets.chomp.to_i 
            if question.answer == player_guess
                puts "#{player_guess}? Live to fight another round"
            else 
                puts "#{player_guess}? Another one bites the dust. -1"
                @current_player.lose_life
            end
            puts "#{@player1.name}: #{@player1.lives} lives left"
            puts "#{@player2.name}: #{@player2.lives} lives left"
            break if game_over
            if @current_player == @player1 
                @current_player = @player2
            else 
                @current_player = @player1
            end 
        end 
    end 
            

            def game_over 
                if @player1.lives == 0 
                    puts "#{@player1.name} is dead. #{@player2.name} wins"
                    return true 
                elseif @player2.lives == 0
                    puts "#{@player2.name} is dead. #{@player1.name} wins"
                    return true 
                end
            return false  
            end
    end 