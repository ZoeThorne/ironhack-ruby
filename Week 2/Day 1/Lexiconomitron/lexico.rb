class Lexiconomitron

	def eat_t(string)
		string.delete("tT")
	end

	def shazam(array)
		reversed_array = array.map do |word| 
			eat_t(word.reverse)
		end
		shazam_array = []
		shazam_array << reversed_array[0]
		shazam_array << reversed_array[-1]

	end

	def oompa_loompa(array)
		array = array.select { |word| word.length <= 3 }
		array = array.map { |word| eat_t(word) }
	end

end