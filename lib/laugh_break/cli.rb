class LaughBreak::CLI

    def call
        puts "Welcome to your Laugh Break!"
        puts "Choose a joke category:"
        list_categories
        menu
        
    end 

    def list_categories
        # <<-DOC is heredoc for multiline strings and .gsub code to get rid of indentation
        puts <<-DOC.gsub /^\s*/, ''  
        1. General
        2. Knock Knock
        3. Programming 
    
        DOC
    end

    def menu
      input = nil 
      while input != 'exit'
        puts "Enter 1 -3 for the category of joke you'd like to hear or type exit:"
        input = gets.strip
        #case expression is an alternate of if-elsif-else expression
        case input
        when "1"
            puts "General joke"
        when "2"
            puts "Knock Knock joke"
        when "3"
            puts "Programming joke"
        when "exit"
            goodbye
        else 
            puts "Sorry, that's not a choice!"
        end
      end
    end

    def goodbye
        puts "Come back soon for another laugh break."
    end

end
