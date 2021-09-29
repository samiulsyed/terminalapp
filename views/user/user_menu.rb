require "tty-font"
require "./utils/utils"
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
     prompt.select("What Would you like to do?", choices)
    end

    def self.user_page
        font = TTY::Font.new(:doom)
        pastel = Pastel.new  
        puts pastel.cyan(font.write("hello #{@username}"))
        sleep(0.5)
        
    end
  
end