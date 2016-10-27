require "sinatra"
require 'sinatra/reloader' if development?
require_relative "models/blog.rb"
require_relative "models/post.rb"

blog = Blog.new
blog.add_post Post.new("First Post", Time.now, "This is the first post.", "Testing", "Zoe")
blog.add_post Post.new("Second post", Time.now+1, "This is the second post.", "Bacon", "Zoe")
blog.add_post Post.new("Third post", Time.now+2, "This is the third post.", "Ruby", "Nick")
blog.add_post Post.new("Fourth post", Time.now+3, "This is the fourth post.", "Cake", "Nick")

get "/" do 
	@sorted_posts = blog.show_posts
	erb(:front_page)
end

get "/post/:index" do
	@sorted_posts = blog.show_posts
	@index = (params[:index]).to_i
	@title = @sorted_posts[@index].title
	@date = @sorted_posts[@index].date
	@text = @sorted_posts[@index].text
	@category = @sorted_posts[@index].category
	@author = @sorted_posts[@index].author
	erb(:post)
end

get "/newpost" do
	erb(:newpost)
end

post "/makepost" do
	@title = params[:title]
	@text = params[:text]
	@date = Time.now
	@category = params[:category]
	@author = params[:author]
	@sorted_posts = blog.show_posts
	blog.add_post Post.new(@title, @date, @text, @category, @author)
	redirect to("/")
end