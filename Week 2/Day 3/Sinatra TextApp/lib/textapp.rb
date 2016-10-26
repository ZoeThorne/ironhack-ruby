class TextApp
	class << self
		def render(text, method)
			@text = text
			# Does whatever method is chosen
			send method

		end

		def shout
			@text.upcase
		end

		def whisper
			@text.downcase
		end

		def alphabetise 
			words = @text.split
			new_words = words.map do |word|
				word.chars.sort.join
			end
			new_words.join(" ")
		end

		def yoda
			words = @text.split
			words.reverse.join(" ")
		end
	end
end