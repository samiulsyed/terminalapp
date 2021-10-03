require "tty-font"
require "./utils/utils"
require "./views/quote/quote"
require "./controllers/tradie_controller"


 
class User_menu
      
    def self.greet
        #   Utils.clear
        puts "What is your name?"
        @username = gets.chomp.upcase.strip
        menu()
    end 

    def self.menu
        user_page()
        prompt = TTY::Prompt.new
        choices = {"Get a Quote" => 1, "List All Tradies" => 2}
    choose = prompt.select("What Would you like to do?", choices)
   
    case choose
    when  1
         Views::Quotes.new_quote
  
    when  2  
       TradieController.index
       request
    end
 end
    def self.user_page
        font = TTY::Font.new(:doom)
        pastel = Pastel.new  
        puts pastel.cyan(font.write("hello #{@username}"))
        sleep(0.5)
        
    end
     def self.request
            puts "if the tradie you are looking for is not on our list you can request a quote we will get a tradie you are looking for to contact you"
            puts "would you like to request a quote? please put y for yes n for no"
            answer = gets.chomp.strip 
            if answer == "y" 
                Views::Quotes.new_quote
            else 
                puts "thank you for using Trade AU"
            end
    end 
  
end