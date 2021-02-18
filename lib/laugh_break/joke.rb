class LaughBreak::Joke
    attr_accessor :category, :setup, :punchline
    @@all = [] # use array to access objects in other classes 
 
    def initialize(type, question, answer)
        @category = type
        @setup = question
        @punchline = answer
        @@all << self
    end
 
    def self.all
        @@all
    end
 
end
