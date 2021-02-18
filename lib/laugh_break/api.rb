require "httparty"
require "pry"
require_relative './joke.rb'
 
class LaughBreak::API
 
    def self.get_jokes(url)
      resp = HTTParty.get(url) #get data from API (outside resource)
      # create data from object
    #   resp['string'].each do |hash| #iterate and access each element in the hash
    #     Joke.new(
    #         hash['category'],
    #         hash['setup'],
    #         hash['punchline']
    #     )
    #   end
    end
 
end
 
# binding.pry
 
puts "joke"