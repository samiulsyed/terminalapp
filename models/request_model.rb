require_relative  "./request_record"

class Request < RequestRecord
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