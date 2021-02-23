require 'pry'
require 'httparty'
require_relative './joke.rb'

class API
    
    def self.get_jokes(url)
      #get data from API (outside resource)
      response = HTTParty.get(url)

      new_joke = Joke.new #instantiate a new joke object
      #response.each do |x|
      new_joke.type = response[1]["type"]
      new_joke.setup = response[1]["setup"]
      new_joke.punchline = response[1]["punchline"]

      # create data from object
      setup = response.map.with_index { |x| x["setup"] } #iterate over response array to return all values of "setup" 
        # setup = response.each_with_index do |intro, i|
        # puts "#{i + 1}. #{intro}" 
        # puts setup.join("\n") # print out with new lines
        binding.pry
        # puts
        # end
    
      end
  end



   # "https://official-joke-api.appspot.com/jokes/#{category}/ten"
API.get_jokes("https://official-joke-api.appspot.com/jokes/general/ten")
# API.get_jokes("https://official-joke-api.appspot.com/jokes/knock-knock/ten")
# API.get_jokes("https://official-joke-api.appspot.com/jokes/programming/ten")


