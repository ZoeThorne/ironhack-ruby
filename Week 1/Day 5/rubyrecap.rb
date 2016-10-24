# Function to calculate power without using power operator

def power(first_num, second_num)
	result = 1
	i = 1
	while i <= second_num
	result = result * first_num
	i += 1
	end
	result
end

power(3,4)



# Function to reverse a string

def reverse_text(string)
	string.reverse
end

reverse_text("You are not going anywhere")



# Function to return the product of every number up to that number multiplied together
def factorial(num)
	(1..num).reduce(:*)
end

factorial(5)


# Function to convert a number into hours and minutes
def time_conversion(num)
	hours = num/60
	mins = num%60
	puts "#{hours}:#{mins}"
end

time_conversion(500)



# Function to return the number of vowels in a string
def count_vowels(string)
	string.scan(/[aeoui]/).count
end

count_vowels("hello")


# Function to return array without duplicates
require 'set'

def uniques(array)
	array.to_set
end

uniques([1,5,"frog", 2,1,3,"frog"])
