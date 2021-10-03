require 'tty-table'
require 'colorize'
module Views
    module Tradies
        def self.index(tradies)
            return puts "No Requests!".red if tradies.empty?

            headers = %w[Id Business Contact Trade Email]
            rows = table_rows_for tradies
            table = TTY::Table.new headers, rows
            puts table.render(:ascii)
        end

        def self.table_rows_for(tradies)
            tradies.map do |tradie|
                [tradie.id,  tradie.businessname, tradie.contact_num, tradie.trade, tradie.email]
        end
        end
        
    end
end