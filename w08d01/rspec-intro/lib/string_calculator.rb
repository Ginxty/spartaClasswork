class StringCalculator
	
	def self.add(number1)
		array = number1.split(",")
		array.map!(&:to_i)
		array.reduce(:+)
	end
	
end