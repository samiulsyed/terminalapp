require "./views/request/index"
require "./views/request/request"
require "./models/request_model"



class RequestController
    def self.index
        requests = Request.all.compact
        Views::Requests.index(requests)
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