require 'httparty'
require 'json'
include HTTParty

# response = HTTParty.get('https://api.punkapi.com/v2/beers')

# puts response.body

class PunkApiCall
  include HTTParty

  base_uri 'https://api.punkapi.com/v2'

  def all_beers
    self.class.get ('/beers')  
  end

  # def all_beer_names
    
  #   all_data = self.class.get('/beers')

  #   parsed_data = all_data.parsed_response

  #   parsed_data.map do |beer|  
  #     beer["name"]
  #   end  
     
  end
end

punk_call = PunkApiCall.new

puts punk_call.all_beer_names