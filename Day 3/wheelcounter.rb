
# Create a car class that has 4 wheels and a noise
class Car
	attr_reader :wheels, :noise
	def initialize
		@wheels = 4
		@noise = "Brooom"
	end
end

# Create a motorcycle class that has 2 wheels and a noise
class Motorcycle
	attr_reader :wheels, :noise
	def initialize
		@wheels = 2
		@noise = "Vroom"
	end
end

# Create a bicycle class that has 2 wheels and a noise
class Bicycle
	attr_reader :wheels, :noise
	def initialize
		@wheels = 2
		@noise = "Squeal!"
	end
end

# Create a wheel counter
class WheelCounter

	# Takes a number of vehicles
  def initialize(vehicles)
    @vehicles = vehicles
  end

  	# Count the number of wheels in each vehicle and return sum
  def count
   @vehicles.map { |v| v.wheels }.reduce(:+)
  end
end

class NoisePrinter
	def initialize(vehicles)
		@vehicles = vehicles
	end

	def print_noises
		puts @vehicles.map(&:noise).join(", ")
	end
end
vehicles = [Car.new, Motorcycle.new, Bicycle.new]

puts WheelCounter.new(vehicles).count  # 4 + 2 + 2 = 8
NoisePrinter.new(vehicles).print_noises