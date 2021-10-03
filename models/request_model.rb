require_relative  "./quote_record"

class Request 
   attr_accessor :businessname, :contactnumber, :contactperson, :requestdiscription 


    def initialize (businessname, contactnumber , contactperson, requestdiscription )
     @businessname = businessname   
     @contactnumber = contactnumber
     @contactperson = contactperson
     @requestdiscription = requestdiscription
     end

     def self.[](index)
       
    end
 
    def [](index)
        puts "This is great!"
    end

end