
require 'tty-table'

module Views
    module Quote
        def self.index(quotes)
            return puts "No Quotes!" if quotes.empty?

            headers = %w[Id Title Difficulty]
            rows = table_rows_for recipes
            table = TTY::Table.new headers, rows
            puts table.render(:ascii)
        end

        def self.table_rows_for(quotes)
            quotes.map do |quote|
                [quote.id, quote.quote, quote.trade]
            end
        end
    end
end