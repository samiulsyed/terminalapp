require "./controllers/quote_controller"

module Views
    module Quotes
        def self.new_quote
            puts "Whats Trade are you looking for? eg Plumber, electrician, carpenter.... "
            print "Trade: "
            trade = gets.chomp.strip
            print "Please describe the work you require? "
            jobdiscription = gets.chomp.strip
            print "Please advise name of best contact person? "
            contactperson = gets.chomp.strip
            print "Please Enter Your Contact Number? "
            contactnumber = gets.chomp.strip
            puts "Thank you we have added you to our List"
            new_quote_controller = QuoteController.new
            new_quote_controller.new_quotec(trade, jobdiscription, contactperson, contactnumber)
            
        end


        def thankyou 
            puts "Thank you have added you to our list"
            puts "Please check back in to"

        end 
        
    end
end