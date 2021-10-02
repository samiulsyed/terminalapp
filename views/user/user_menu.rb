require "tty-font"
require "./utils/utils"
require "./views/quote/quote"
require "./controllers/quote_controller"


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
        choices = {"Get a Quote" => 1, "Find A Tradie" => 2}
    choose = prompt.select("What Would you like to do?", choices)
   
    case choose
    when  1
         Views::Quotes.new_quote
  
    when  2  
       puts "delete"
    end
 end
    def self.user_page
        font = TTY::Font.new(:doom)
        pastel = Pastel.new  
        puts pastel.cyan(font.write("hello #{@username}"))
        sleep(0.5)
        
    end
  
end