require "./views/tradie/index"
require "./views/tradie/tradie"
require "./models/quote_model"
class QuoteController
    def self.index
        quote = Quote.all.compact
        # Tradie::Tradies.index(tradies)
    end

    def show(id)
        quote = Quote.find(id)
        # Views::Tradies.show tradie
    end

    def new_quotec (trade, jobdiscription, contactperson, contactnumber)
        quote = Quote.new(trade, jobdiscription, contactperson, contactnumber)
       quote.save 
    end

    def save
        super
    end

end
