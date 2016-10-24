require './fizzbuzz'

describe FizzBuzz do 
	let (:fizzbuzz) { FizzBuzz.new }

	it "should return 1 if number is 1" do
	expect(fizzbuzz.calculate("1")).to eq("1")
	end

	it "should return fizz if number is 3" do
	expect(fizzbuzz.calculate("3")).to eq("Fizz")
	end

	it "should return buzz if number is " do
	expect(fizzbuzz.calculate("5")).to eq("Buzz")
	end

	it "should return fizz if number is 9" do
	expect(fizzbuzz.calculate("9")).to eq("Fizz")
	end

	it "should return fizzbuzz if number is 15" do
	expect(fizzbuzz.calculate("15")).to eq("FizzBuzz")
	end


end