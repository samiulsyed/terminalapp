require "./views/tradie/index"
require "./views/tradie/tradie"

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
    def new
       tradie = Tradie.new
        Views::Tradies.new tradie
        tradie.save
    end

    def save
        super
        
    end

end
