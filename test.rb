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
 end 

end 