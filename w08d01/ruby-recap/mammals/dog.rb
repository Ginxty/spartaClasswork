require_relative '../animal'
require_relative '../animal_types/mammals'
# Our dog class/template will inherit from animal and be affected by animal types
class Dog < animal
	include mammals
	
	def Bark
		puts "I'm a barky lad"
	end


end


rover = Dog.new

rover.common_mammal_traits


