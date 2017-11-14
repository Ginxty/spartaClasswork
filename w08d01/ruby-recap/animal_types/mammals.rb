# This is the Mammals module that should be included for all mammals
module Mammals

	def common_mammal_traits
		puts 'mammels have nipples and cuddly'
		
	end

	class CommonAction

		def feed_young
			puts 'feeding bairn'
			
		end
	

	class Quadruped
		attr_accessor :number_of_legs

		def initialize(number_of_legs)
			@number_of_legs = number_of_legs
		end

	end


	class Biped < CommonAction
		attr_accessor :number_of_legs

		def initialize(number_of_legs)
			@number_of_legs = number_of_legs
		end

		def legs
			puts 'I have #{@number_of_legs} legs'

		end
		
	end


	end

end

Lemur = Mammals::Biped.new(2)

Lemur.feed_young
Lemur.legs 