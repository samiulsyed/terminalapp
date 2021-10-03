require "tty-font"
require "./utils/utils"
require "./views/tradie/tradie"
require "./controllers/tradie_controller"
require "./controllers/quote_controller"
require "./views/request/request"

class Tradie_menu
      
    def self.greet
        puts "What is your name?"
        @tradiename = gets.chomp.upcase.strip
        menu()
    end 

    def self.menu
        tradie_controller = TradieController.new
        tradie_page()
        prompt = TTY::Prompt.new
        choices = {Add_My_Business: 1, Delete_My_Business: 2, Quote_A_Job: 3}
        choose = prompt.select("What Would you like to do?", choices)
    
    case choose
    when  1
         Views::Tradies.new_tradie 

    when  2  
       Views::Requests.new_request

    when 3 
        QuoteController.index
        back_to_menu()
    end


 
    end
    def self.tradie_page
        font = TTY::Font.new(:doom)
        pastel = Pastel.new  
        puts pastel.cyan(font.write("hello #{@tradiename}"))
        sleep(0.5)
    
    end

        def self.back_to_menu
        print "please contact customer asap!"
        puts "would you like to go back to main menu? please type y for yes and n for no"
        answer = gets.chomp.strip
        if answer == "y"
            menu()
        else answer == "n"
         puts "Thank you for using Trade Au"
        end 
    end 

    
end