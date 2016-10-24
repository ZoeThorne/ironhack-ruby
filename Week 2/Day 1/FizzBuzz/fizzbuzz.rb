class FizzBuzz

def calculate(number)

	number = number.to_i
	result = ""


	if number % 3 == 0
	result <<"Fizz"
	end
	# adds 'Fizz' to the result if divisible by 3

	if number % 5 == 0
	result << "Buzz"
	end
	# adds 'Buzz' to the result if divisible by 3


	if number % 3 != 0 && number % 5 != 0
	result << number.to_s
	# adds the original number to the result if none of the above
	end
	result


end


end

# end