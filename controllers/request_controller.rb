require "./views/tradie/index"
require "./views/tradie/tradie"
require "./models/request_model"



class RequestController
    def self.index
        requests = Tradie.all.compact
        Views::Tradies.index(requests)
    end

    def new_request (businessname, contactnumber, contactperson, requestdiscription)
       request = Request.new(businessname, contactnumber ,contactperson , requestdiscription)
       request.save 
    end

    def save
        super
    end
     def self.destroy(id)
        request = Request.find(id)
        request.destroy
    end
end