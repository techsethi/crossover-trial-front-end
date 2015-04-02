RSpec.describe ApiService do

	describe "#new" do
	    it "API service is an instance of api_service.rb" do
			api_service = ApiService.new
	        expect(api_service).to be_an_instance_of ApiService
	    end
	end

	describe "#customers" do

	    it "customer method returns body that is string & JSON" do
			api_service = ApiService.new
		    result = api_service.customers
		    body = result.response.body
	    	expect(body).to be_an_instance_of String
	    end

	    it "returns Array" do
			api_service = ApiService.new
		    result = api_service.customers
		    body = result.response.body
		    data =  JSON.parse(body)
	    	expect(data).to be_an_instance_of Array
	    end
	end

end

