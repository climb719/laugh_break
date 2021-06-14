class Joke
    attr_accessor :type, :setup, :punchline
    @@all = [] # use array to access objects in other classes 
 
    def initialize 
        @@all << self
    end
 
    def self.all
        @@all
    end
 
end
