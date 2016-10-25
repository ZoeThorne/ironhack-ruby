require 'sinatra'
require 'sinatra/reloader' if development?
# Only use it while you're developing


# View at localhost:4567

get '/profile/:user' do 
	@user = params[:user]
	erb :profile	
end

get '/about' do
	@name = 'Zoe' #Only single quotes seem to work and you must use instance variables
	@foods = ["avocado", "goat's cheese", "dulce de leche"]
	erb :about
end

