require "./controllers/quote_controller"
require  "tty-progressbar"
require "pastel"
require 'colorize'
module Views
    module Quotes
        def self.new_quote

            barprogress()
            puts "Whats Trade are you looking for? eg Plumber, electrician, carpenter....!".red
            print "Trade: ".blue
            trade = gets.chomp.strip
            print "Please describe the work you require? ".blue
            jobdiscription = gets.chomp.strip
            print "Please advise name of best contact person? ".blue
            contactperson = gets.chomp.strip
            print "Please Enter Your Contact Number? ".blue
            contactnumber = gets.chomp.strip
            barprogress()
            puts "One of our parter tradies will be in contact with you shortly!".blue
            new_quote_controller = QuoteController.new
            new_quote_controller.new_quotec(trade, jobdiscription, contactperson, contactnumber)
            
        end


        def self.barprogress 
            

            pastel = Pastel.new
            green  = pastel.on_green(" ")
            red    = pastel.on_red(" ")
            bar = TTY::ProgressBar.new("|:bar|  ",
            bar_format: :blade, 
            total: 10,
            complete: green,
            incomplete: red
)
            30.times do
             sleep(0.1)
            bar.advance
            end
            bar.advance(1)

        end 
        
    end
end