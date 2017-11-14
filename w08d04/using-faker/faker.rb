require "faker"
require "date"

class FakerLab  
  
  def self.user
    {
      name: Faker::Name.unique.name,
      "Date" => Faker::Date.unique.birthday(18, 95),
      "Phonenumber" => Faker::PhoneNumber.unique.phone_number,
      "Email" => Faker::Internet.free_email,
      "Address" => {
        Country: Faker::Address.country,
        City: Faker::Address.city,
        Street: Faker::Address.street_name,
        Addresses: Faker::Address.street_address,
        Zip: Faker::Address.zip_code
      }
    }
  end

end