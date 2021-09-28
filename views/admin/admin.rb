require "tty-font"




class Admin_view
    
    def self.menu
        admin_page()
        prompt = TTY::Prompt.new
        choices = {Add_Tradie: 1, Delete_Tradie: 2}
        user_input = prompt.select("What Would you like to do?", choices)
    end

    def self.admin_page
        font = TTY::Font.new(:doom)
        pastel = Pastel.new  
        puts pastel.cyan(font.write("Welcome Root"))
        sleep(0.5)
    
    end
    
end