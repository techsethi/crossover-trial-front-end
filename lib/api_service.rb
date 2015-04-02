require 'httparty'

class ApiService
  include HTTParty
  base_uri 'http://localhost:4444/api'

  def initialize()
    @options = {}
  end

  def customers
    self.class.get("/customers", @options)
  end

end
