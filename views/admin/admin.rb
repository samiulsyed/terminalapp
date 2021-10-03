require "tty-font"
require "./views/tradie/tradie"
require "./controllers/tradie_controller"
require "./models/tradie_model"


class Admin_view
    
    def self.menu
        admin_page()
        prompt = TTY::Prompt.new
        choices = {Add_Tradie: 1, Delete_Tradie: 2}
        user_input = prompt.select("What Would you like to do?", choices)
        case user_input 
        when 1 
        Views::Tradies.new_tradie 
        when 2 
        TradieController.index
        print "Please enter the ID you would like to delete? "
        answer = gets.chomp.strip.to_i
        # TradieController.destroy(answer)
    
        end
    end

    def self.admin_page
        font = TTY::Font.new(:doom)
        pastel = Pastel.new  
        puts pastel.cyan(font.write("Welcome Root"))
        sleep(0.5)
    
    end
    
end