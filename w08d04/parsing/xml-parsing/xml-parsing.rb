require 'nokogiri'

doc = Nokogiri::XML(open('./menu.xml'))

# puts doc.search('price')

doc.search('food').each do |food|
  puts food
end