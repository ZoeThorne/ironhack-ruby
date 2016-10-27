require_relative "../server.rb"
require "rspec"
require "rack/test"

describe "Sinatra Blog" do 
	include Rack::Test::Methods	



	def app 
		Sinatra::Application
	end

	it "should load the root page" do
		get "/"
		expect(last_response).to be_ok
	end

	it "should load the new post page" do
		get "/newpost"
		expect(last_response).to be_ok
	end

end