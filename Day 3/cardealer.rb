require "pry"

class CarDealer
	def initialize(inventory)
		@inventory = inventory
	end

	def cars(brand)
		puts "For that brand, we have: #{@inventory[brand.to_sym]}"
	end

	def print_inventory
		@inventory.each do |brand, cars|
			puts "#{brand}: #{cars.join(", ")}"	
		end	
	end

end

cars = {
	Ford: ["Fiesta", "Mustang"],
	Honda: ["Civic", "CR-V"],
	Toyota: ["Yaris", "Auris"]
}
				

car_dealer = CarDealer.new(cars)

car_dealer.cars("Ford")
car_dealer.print_inventory

# Method to print inventory
# Ford: Fiesta, Mustang
# Honda, Civic, CR-V