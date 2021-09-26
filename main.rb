require "tty-prompt"
require "./controllers/admin_controller"

     newAdmin=Admin.new()



begin
   prompt = TTY::Prompt.new
   choices = {I_Need_A_Tradie: 1, I_Am_A_Tradie: 2, I_Am_Admin: 3}
   user_input = prompt.select("Why are you here?", choices)
    
    case user_input
    when  3
      
       Admin.print
        
    when  2   
        puts "i am 2"
    when  1

        puts "i am one"
    end


end until ['quit', 'q'].include? user_input

    # when '1'
    #     tradie_controller.show param
    # when 'new', 'n'                                                                                           