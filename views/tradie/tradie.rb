module Views
    module Tradies
        def self.new(tradie)
            puts "Please Enter your Business Name!"
            print "Business Name: "
            tradie.business_name = gets.chomp.strip
            print "Please Enter Your Contact Number: "
            tradie.contact_number = gets.chomp.strip
            print "What is your Trade? "
            tradie.trade = gets.chomp.strip
            print "what is your email? "
            tradie.email = gets.chomp.strip
            puts "Thank you we have added you to our List"
        end
        def thankyou 
            puts "Thank we have added you to our list"
            puts "Please check back in to"
        end 
    end
end