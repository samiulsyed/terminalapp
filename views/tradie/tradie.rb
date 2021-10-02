require "./controllers/tradie_controller"

module Views
    module Tradies
        def self.new_tradie
            puts "Please Enter your Business Details!"
            print "Business Name: "
            business_name = gets.chomp.strip
            print "Please Enter Your Contact Number: "
            contact_number = gets.chomp.strip
            print "What is your Trade? "
            trade = gets.chomp.strip
            print "what is your email? "
            email = gets.chomp.strip
            puts "Thank you we have added you to our List"
            new_tradie_controller = TradieController.new
            new_tradie_controller.new_tradiec(business_name,contact_number,trade, email)
            
        end


        def thankyou 
            puts "Thank you have added you to our list"
            puts "Please check back in to"

        end 
    end
end