
  
require "./views/tradie/index"
require "./views/tradie/tradie"
require "./models/tradie_model"



class TradieController
    def self.index
        tradies = Tradie.all.compact
        Views::Tradies.index(tradies)
    end

    def show(id)
        tradie = Tradie.find(id)
        Views::Tradies.show tradie
    end

    def new_tradiec (business_name, contact_number, trade, email)
        tradie = Tradie.new(business_name,contact_number,trade, email)
       tradie.save 
    end

    def save
        super
    end
     def self.destroy(id)
        tradie = Tradie.find(id)
        tradie.destroy
    end
end