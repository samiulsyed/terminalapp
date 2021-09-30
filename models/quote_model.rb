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