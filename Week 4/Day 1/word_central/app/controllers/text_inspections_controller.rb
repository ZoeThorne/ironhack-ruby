class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end

	def create
    	@text = params[:text_inspection][:user_text]
    	@word_count = @text.split(" ").length
    	words = @text.split(' ')
    	
  		frequency = Hash.new(0)
 		words.each { |word| frequency[word.downcase] += 1 }
 		sorted = frequency.sort_by {|key,value| value}
 		@most_used = sorted.reverse.first(10)
 		
    	render 'results' # You wouldn't normally do this but it's just because we're still learning
  	end

end
