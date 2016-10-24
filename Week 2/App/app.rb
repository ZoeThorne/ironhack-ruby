class Calculator
	def add(string)
		total = 0
		string.split(',').each do |number|
			total += number.to_i
		end
		
		total
	end
end