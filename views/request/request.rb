require "./controllers/request_controller"
require 'colorize'
module Views
    module Requests
        def self.new_request
            puts "Please Enter your details and our Admin staff will be in contact with you!".red
            print "Business Name: ".blue
            businessname = gets.chomp.strip
            print "Please Enter Your Contact Number: ".blue
            contactnumber = gets.chomp.strip
            print "Who is the best contact person in your business? ".blue
            contactperson = gets.chomp.strip
            print "Please shortly describe what you would like our admin to do? ".blue
            requestdiscription = gets.chomp.strip
            puts "Thank you one of our admin staff will be in contact with you shortly".red
            new_request_controller = RequestController.new
            new_request_controller.new_request(businessname,contactnumber,contactperson, requestdiscription)
            
        end


        def thankyou 
            puts "Thank you have added you to our list"
            puts "Please check back in to"

        end 

       
    end
end