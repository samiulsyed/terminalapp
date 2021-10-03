require './controllers/tradie_controller'
require './controllers/request_controller'

begin 
# test quote request controller  
 puts "what would you like to test? "
 answer = gets.chomp.strip.to_i
 case answer   
 
 when 1
    RequestController.index
 when 2 
    TradieController.index
 when 3 
   TradieController.index
        print "Please enter the ID you would like to delete? "
        answer = gets.chomp.strip.to_i
        TradieController.destroy(answer)
 end 

end 