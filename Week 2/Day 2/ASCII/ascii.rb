require 'sinatra'
require 'sinatra/reloader' if development?
require 'artii'

get '/word/:word/?:font?/?'  do
	word = params[:word]
	@font = params[:font]
	if @font != nil
	artii = Artii::Base.new :font => @font
	@ascii_word = artii.asciify(word)
	else
	artii = Artii::Base.new 
	@ascii_word = artii.asciify(word)
	end	
	erb :ascii
end

get '/word/seahorse/special/secret' do
	erb :seahorse
end