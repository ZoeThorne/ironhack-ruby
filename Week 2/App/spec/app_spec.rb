require './app'

describe Calculator do 
	let (:calculator) { Calculator.new }

	it "should return 0 for empty string" do
	expect(calculator.add("")).to eq(0)
	end

	it "should return 2 for that number" do
		expect(calculator.add("2")). to eq(2)
	end

	it "should return 3 if adding 1 and 2" do
		expect(calculator.add("1,2")). to eq(3)
	end
end