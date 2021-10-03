require "./controllers/request_controller"

module Views
    module Requests
        def self.new_tradie
            puts "Please Enter your details and our Admin staff will be in contact with you!"
            print "Business Name: "
            businessname = gets.chomp.strip
            print "Please Enter Your Contact Number: "
            contactnumber = gets.chomp.strip
            print "Who is the best contact person in your business? "
            contactperson = gets.chomp.strip
            print "Please shortly describe what you would like our admin to do? "
            requestdiscription = gets.chomp.strip
            puts "Thank you one of our admin staff will be in contact with you shortly"
            new_request_controller = RequestController.new
            new_request_controller.new_request(business_name,contact_number,trade, email)
            
        end


        def thankyou 
            puts "Thank you have added you to our list"
            puts "Please check back in to"

        end 

       
    end
end