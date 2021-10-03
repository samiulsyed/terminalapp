
require 'tty-table'

module Views
    module Quote
        def self.index(quotes)
            return puts "No Quotes!" if quotes.empty?

            headers = %w[Id Trade Job_Description ContactPerson ContactNumber]
            rows = table_rows_for recipes
            table = TTY::Table.new headers, rows
            puts table.render(:ascii)
        end

        def self.table_rows_for(quotes)
            quotes.map do |quote|
                [quote.id, quote.jobdiscrption, quote.trade quote.contactperson quote.contactnumber]
            end
        end
    end
end