class Person
	attr_accessor :name, :sex, :age, :weight, :height

	def initialize(name, sex, age, weight, height)
		self.name = name
		self.age = age
		self.height = height
		self.weight = weight
		self.sex = sex
	end

	def calculate_bmi height,weight
  (self.weight / (self.height  ** 2)).to_i
end

def calculate_calories sex, height, weight, age
  if sex == "Male"
    bmr = 66.47 + (13.7 * self.eight) + (5 * self.height * 100) - (6.8 * self.age)
  else
    bmr = 655.1 + (9.6 * self.weight) + (1.8 * self.height * 100) - (4.7 * age)
  end

  bmr.to_i

# calculate BMI
person_one_bmi = self.calculate_bmi James.height, James.weight

# calculate required calories
person_one_calories = self.calculate_calories(James.sex, James.height, James.weight, James.age)

puts "#{James.name} has a BMI of #{person_one_bmi}. Recommend calorie intake is #{person_one_calories} calories"

end
end