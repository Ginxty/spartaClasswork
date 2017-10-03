# thats a loop
# loop do 
# 	puts "I love Ruby"
# end 

# while loop
i = 0
while i < 10 do
	puts "while: #{i}"
	i += 1
end



# Until Loop
j = 0

until j > 10
	puts "until: #{j}"
	j += 1
end


#for loop

for k in 0..5
	k.delete_if &:even?
end


# Times
5.times do
	puts "OMG"
end


# Each
names = ["abass", "asalmon", "atrout"]
names.each do |name|
	puts name
end


# Array Enumerators

# Map
words = ["luke", "Anakin", "Leah", "Han", "Chewie"]

words.map do |word|
	word.reverse!
end
puts words

# Reduce
some_numbers [1,2,3,5,4,7,6,9,8,0]
puts some_numbers.reduce(:+)
end

# Select
students = ["Luke", "Liam", "James", "Martha"]

cool_students = students.select do |student|
	student.chars.first === "L"
end
puts cool_students

