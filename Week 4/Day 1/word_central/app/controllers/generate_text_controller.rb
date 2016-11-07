class GenerateTextController < ApplicationController

	def new
		render 'new'
	end

	def create
		@number = params[:number].to_i
		@choice = params[:choose_form]
		@quotes = ["'It would seem that you have no useful skill or talent whatsoever' he said. 'Have you thought of going into teaching?'", "Scientists have calculated that the chances of something so patently absurd actually existing are millions to one. But magicians have calculated that million-to-one chances crop up nine times out of ten.", "Poets have tried to describe Ankh-Morpork. They have failed. Perhaps it's the sheer zestful vitality of the place, or maybe it's just that a city with a million inhabitants and no sewers is rather robust for poets, who prefer daffodils and no wonder. So let's just say that Ankh-Morpork is as full of life as an old cheese on a hot day, as loud as a curse in a cathedral, as bright as an oil slick, as colourful as a bruise and as full of activity, industry, bustle and sheer exuberant busyness as a dead dog on a termite mound.", "The trouble with having an open mind, of course, is that people will insist on coming along and trying to put things in it.", "Some humans would do anything to see if it was possible to do it. If you put a large switch in some cave somewhere, with a sign on it saying 'End-of-the-World Switch. PLEASE DO NOT TOUCH', the paint wouldn't even have time to dry."]
		@split_quotes = @quotes.join.split(' ')
		render 'placeholder_text'
	end
end
