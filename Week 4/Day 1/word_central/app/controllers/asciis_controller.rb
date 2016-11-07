require 'artii'

class AsciisController < ApplicationController

	def new
		render 'new'
	end

	def create
		word = params[:ascii][:user_text]
		artii = Artii::Base.new 
		@ascii_word = artii.asciify(word)
		render 'ascii'
	end
end
