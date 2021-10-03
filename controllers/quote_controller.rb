require "./views/quote/index"
require "./views/quote/quote"
require "./models/quote_model"

class QuoteController
    def self.index
        quotes = Quote.all.compact
        Views::Quotes.index(quotes)
    end

    def new_quotec (trade, jobdiscription, contactperson, contactnumber)
        quote = Quote.new(trade, jobdiscription, contactperson, contactnumber)
       quote.save 
    end

    def save
        super
    end

end
