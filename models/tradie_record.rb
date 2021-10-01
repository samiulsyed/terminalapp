
require 'yaml'

class TradieRecord
    class RecordNotFound < StandardError; end

    attr_reader :id

    def self.db
        @db ||= YAML.load(File.read('tradie.yml')) rescue []
    end

    def self.file_name
        "#{self.name.downcase}.yml"
    end

    def self.all
        self.db
    end
    

       def self.save(record)
        # self is the class object ActiveRecord
        new_id = self.db.length + 1
        yield(new_id)
        self.db << record
        File.open(file_name, 'w') do |file|
            file.write(self.db.to_yaml)
        end
    end
    
       def save
    
        self.class.save(self) { |id| @id = id }
        self
    # end
end