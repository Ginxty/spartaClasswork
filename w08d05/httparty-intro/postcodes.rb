require 'httparty'
require 'json'

class PostcodeApi
  include HTTParty
  base_uri 'https://api.postcodes.io'

  def single_postcode_search(postcode)
    self.class.get("/postcodes/#{postcode}").parsed_response
 
  end

  def multiple_postcodes_search(postcode_array)
    self.class.post("/postcodes", {body: {postcodes: postcode_array}}).parsed_response
    
  end
  
end

postcode = PostcodeApi.new

puts postcode.multiple_postcodes_search(["OX49 5NU", "M32 0JG", "NE30 1DP"])