class Car

	def self.other_noise
		puts "Fffffffff"
	end

	def self.speed_control
		puts "How many mph are you travelling?"
		speed = gets.chomp
			if speed.to_i > 100 
				puts "Woaaaah! Slow down!"
			else
				puts "Weeeee!"
			end
	end

	def initialize(noise)
		@noise = noise
		@cities = []
	end


	def rev
	puts @noise
	end

	# 	store new city as an array
	# def visit(city)
	#	@cities.push(city)
	#	puts "Cool! You went to #{city}!"
	# end

	# 	return the array
	# def cities
	#	puts "This car has been to:"
	#	puts @cities
	# end
	
	#def first_visit
	#	empty_array = Marshal.dump([])
	#	IO.write("cities", empty_array)
	#end

	# add a city to a file

 	def visit(city)
    marshaled_cities = Marshal.dump(cities + [city])
    IO.write("cities", marshaled_cities)
  	end

  	def cities  # return an array of visited cities
  		if File.exist?("cities")
    		marshaled_cities = IO.read("cities")
    		Marshal.load(marshaled_cities)
   		else
   			[]
   		end
    end

 end

  class RacingCar < Car

    	def initialize(noise)
    	@noise = "BRROOOOOOMM!"
    	end

    	# OR
    	#def rev
    	#	puts "BRROOOOOOOMM!"
    	#end

	end

mini = Car.new("broom")
mini.rev
ferrari = Car.new("BRROOOOOOMM!!")
ferrari.rev
racing_car = RacingCar.new("Broom")
racing_car.rev



# Car.speed_control

# ferrari.first_visit

#ferrari.visit("Barcelona")
#ferrari.cities
#ferrari.visit("Madrid")
#ferrari.cities
#ferrari.visit("Alicante")
#ferrari.cities
