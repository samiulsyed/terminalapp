class Tradie
   attr_accessor :businessname, :contact_num, :email, :trade 

    
    def initialize (business_name, contact_number, email, trade )
     @businessname = business_name   
     @contact_num = contact_number
     @email = email 
     @trade = trade
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
    
    def valid?
        @valid
    end
    def print_name 
        puts @businessname
        puts @email 
        puts @trade
        puts @contact_num
    end 
    # def save
    #     super
        
    # end
       def [](index)
        puts "This is great!"
    end

end