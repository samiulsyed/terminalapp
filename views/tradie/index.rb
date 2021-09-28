
require 'tty-table'

module Views
    module Tradies
        def self.index(tradies)
            return puts "No recipes!" if tradies.empty?

            headers = %w[Id Title Difficulty]
            rows = table_rows_for recipes
            table = TTY::Table.new headers, rows
            puts table.render(:ascii)
        end

        def self.table_rows_for(tradies)
            tradies.map do |tradie|
                [tradie.id, tradie.trade, tradie.business_name]
            end
        end
    end
end