require "pry"

class CarDealer
	def initialize(inventory)
		@inventory = inventory
	end

	def cars(brand)
		cars = @inventory.find { |item| item[:brand] == brand }
		puts "For that brand, we have: #{cars}"
	end

	def print_inventory
		@inventory.each do |brand, cars|
			puts "#{brand}: #{cars.join(", ")}"	
		end	
	end

end

#cars = {
#	Ford: ["Fiesta", "Mustang"],
#	Honda: ["Civic", "CR-V"],
#	Toyota: ["Yaris", "Auris"]
#}
	

 cars = [
	{ brand: "Ford", model: ["Fiesta", "Mustang"]},
	{ brand: "Honda", model: ["Civic", "Cr-V"]},
	{ brand: "Toyota", model: ["Yaris", "Auris"]}
]			

car_dealer = CarDealer.new(cars)

car_dealer.cars("Ford")
car_dealer.print_inventory

# Method to print inventory
# Ford: Fiesta, Mustang
# Honda, Civic, CR-V