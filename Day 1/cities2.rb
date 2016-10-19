habitants = {
	Barcelona: 1_602_000,
	Madrid: 3_165_000,
	Miami: 417_650
}

# Calculate the average
# Print the population for each city, for example,
# Barcelona: 1602000 habs.


#average = habitants.reduce(0) do |sum, (key, value)|
	#sum + population / habitants.size
	#OR sum + item[1] / habitants.size --> if you had item instead of (key, value)

total_pop = habitants.map {|key,value|value}.reduce(0) {|sum,value| sum + value}

average = total_pop/habitants.length

puts "The average population is #{average}"

habitants.each do |key,value|
	puts "#{key} has #{value} inhabitants"
	end