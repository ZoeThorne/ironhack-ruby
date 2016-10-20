require 'ruby-dictionary'
require "pry"

class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(first_word, second_word)
    	
    	# Make a copy of the first word
    	first_word_copy = first_word

    	# Show the first word
    	puts first_word_copy

    	# Make sure the words are equal length and not the same
        while first_word.length == second_word.length && first_word != second_word

        	# Do something to every letter in the first word
            for x in 0..first_word.length-1

            	# If the nth letter of the first word isn't already the same as the nth letter of the second word
            	if first_word_copy[x] != second_word[x]

            		# Remember what that nth letter was 
                	save_character = first_word_copy[x]

                	# Change the nth letter of the copy of the first word to be the same as the nth letter of the second word
                	first_word_copy[x] = second_word[x]  

                		# If the copy of the first word (with changed letter) is a valid word in the dictionary
                		if @dictionary.exists?(first_word_copy)

                			# Change the first word to the new word and show it
                    		first_word = first_word_copy
                    		puts first_word

                    	# Stop when the first word is the same as the second word
  						break if first_word == second_word

  						# If the copy of the first word (with changed letter) is NOT a valid word in the dictionary
               			else

               				# Change the nth letter of the copy of the first word back to the last one you tried
                    		first_word_copy[x] = save_character
               	
               			end
            	# If the two letters are already the same, move on to the next letter 
            	end    
            
       		 end
    	end
	end
end

dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)
my_chain.find_chain("ruby", "code")
# cat
# cot
# cog
# dog

