class Quote
   attr_accessor :trade, :jobdiscription, :contactperson, :contactnumber 
    QUOTES[]

    def initialize (trade, jobdiscription , contactperson, contactnumber )
     @trade = trade   
     @jobdiscription = job_discription
     @contactperson = contactperson
     @contactnumber = contactnumber
    #  self.trade = @trade
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