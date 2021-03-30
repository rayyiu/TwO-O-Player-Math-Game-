class Player

    attr_accessor :name, :lives

    def initialize(name) 
        @name = name
        @lives = 3
    end 
    def lose_life 
        self.lives = self.lives - 1
end 

end 
