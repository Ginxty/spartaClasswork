# This is our Animal class which will inherit from living organism
require_relative './living_organism'

class Animal < LivingOrganism

	def self.traits
		puts "animals can eat, breath, drink, speak and procreate"
		
	end

	def eat
		puts "animal does an eat"
	
	end

	def breath
		puts 'animal does a breath'
		
	end

	def speak
		puts 'animal does a speak'
		
	end

	def procreate
		puts 'heh'
		
	end

	def drink
		puts 'animal does a lap lap'
		
	end


end

Animal.alive

badger = Animal.new

badger.speak