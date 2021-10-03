require 'tty-table'

module Views
    module Requests
        def self.index(requests)
            return puts "No Requests!" if requests.empty?

            headers = %w[Id Business Contact Trade Email]
            rows = table_rows_for requests
            table = TTY::Table.new headers, rows
            puts table.render(:ascii)
        end

        def self.table_rows_for(requests)
            requests.map do |request|
                [request.id,  request.businessname, request.contactnumber, request.contactperson, request.requestdiscription]
        end
        end
        
    end
end