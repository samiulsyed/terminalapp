

require 'yaml'

class RequestRecord
    class RecordNotFound < StandardError; end

    attr_reader :id

    def self.db
        @db ||= YAML.load(File.read('request.yml')) rescue []
    end

    def self.file_name
        "#{self.name.downcase}.yml"
    end

    def self.all
        self.db
    end 
    

       def self.save(record)
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
    end
        def self.find(id)
        requestrecord = self.db.detect { |t| t.id == id.to_i }
        raise RecordNotFound.new(id) unless requestrecord

        requestrecord
    end
        def self.destroy(requestrecord)
      
        return false if requestrecord.nil? 

        idx = db.index { |obj| obj.id == requestrecord.id }
        db[idx] = nil
        File.open(file_name, 'w') do |file|
            file.write(self.db.to_yaml)
        end
    end

    def destroy
     
        self.class.destroy(self)
    end
end