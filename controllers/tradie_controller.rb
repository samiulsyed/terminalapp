require "./views/tradie/index"
require "./views/tradie/tradie"
require "./models/tradie_model"
class TradieController
    def index
        tradie = Tradie.all.compact
        Tradie::Tradies.index(tradies)
    end

    def show(id)
        tradie = Tradie.find(id)
        Views::Tradies.show tradie
    # rescue ActiveRecord::RecordNotFound => exception
    #     Views::Recipes.record_not_found exception
    end

    def new_tradiec (business_name, contact_number, trade, email)
        puts business_name + "ctroller"
        puts contact_number + "ctroller"
        puts trade + "ctroller"
        puts email + "ctroller"
       tradie = Tradie.new(business_name,contact_number,trade, email)
      puts "#{tradie.print_name} model " 
    end

    # def save
    #     super
        
    # end

end
