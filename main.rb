require "tty-prompt"
require "./controllers/admin_controller"
require "tty-font"
require "./utils/utils"
require "./views/tradie/tradie_menu"
require "./views/user/user_menu"
newAdmin=Admin.new()

begin
    Utils.clear
    font = TTY::Font.new(:doom)
    pastel = Pastel.new  
    puts pastel.cyan(font.write("Welcome To Trade AU"))
    # sleep(0.5)
    prompt = TTY::Prompt.new
    choices = {I_Need_A_Tradie: 1, I_Am_A_Tradie: 2, I_Am_Admin: 3}
    user_input = prompt.select("Why are you here?", choices)
    
    case user_input
    when  3
       Admin::index 
    when  2   
        Tradie_menu.greet
    when  1

        User_menu.greet
    
    end
end until ['quit', 'q'].include? user_input

