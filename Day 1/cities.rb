cities = ["miami", "madrid", "barcelona"]

cities.map do |city|
puts city.capitalize
end

total_length = cities.reduce(0) do |sum, city|
	sum + city.length
end

puts total_length/cities.length