require_relative  "./quote_record"

class Quote < QuoteRecord
    class RecordNotFound < StandardError; end
   attr_accessor :trade, :jobdiscription, :contactperson, :contactnumber 


    def initialize (trade, jobdiscription , contactperson, contactnumber )
     @trade = trade   
     @jobdiscription = jobdiscription
     @contactperson = contactperson
     @contactnumber = contactnumber
     self.trade = @trade
     @valid=false
    end

     def self.[](index)
        puts "Class method: #{index}"
    end
    def trade=(trade)
        @trade = trade
        @valid = !(@trade.nil? || @trade.empty?)
    end
    


    # def save
    #     super
        
    # end
    def [](index)
        puts "This is great!"
    end

end