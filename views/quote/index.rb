
require 'tty-table'

module Views
    module Quotes
        def self.index(quotes)
            return puts "No Quotes!" if quotes.empty?

            headers = %w[Id Trade Jobdiscription ContactPerson ContactNumber]
            rows = table_rows_for quotes
            table = TTY::Table.new headers, rows
            puts table.render(:ascii)
        end

        def self.table_rows_for(quotes)
            quotes.map do |quote|
                [quote.id, quote.trade, quote.jobdiscription, quote.contactperson, quote.contactnumber]
            end
        end
    end
end