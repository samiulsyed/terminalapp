require_relative "./tradie_record"

class Tradie < TradieRecord
    class RecordNotFound < StandardError; end
   attr_accessor :businessname, :contact_num, :email, :trade 

    
    def initialize (business_name, contact_number, trade, email )
     @businessname = business_name   
     @contact_num = contact_number
     @trade = trade
     @email = email 
  
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