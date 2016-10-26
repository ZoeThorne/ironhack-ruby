require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/textapp'
require './lib/credentials'
require 'pry'

enable :sessions

get "/" do
	# Sends user to the login page
	erb(:login)
end

post "/login" do
	# Stores the entered username and password
	@username = params[:username]
	@password = params[:password]

	# Checks if password/username is valid and send to main page or back to login page
	check = PasswordValidator.new(@username, @password)
	 if check.valid?
	 	session[:user] = @username
	 	redirect to('/home')
	 else
	 	"Incorrect username or password"
	 	erb(:login)
	 end
end

get "/home" do
	# Not accessible unless there is a session (ie user is logged in)
	redirect to('/') unless session[:user]
	erb(:home)
end

post "/text" do
	# Stores text and chosen method and passes the correct method
	text = params[:text]
	method = params[:method]
	@text_app = TextApp.render(text, method)
	erb(:text)
end

get "/logout" do
	# Closes the session and returns to login page
	session[:user] = nil
	redirect to('/')
end
