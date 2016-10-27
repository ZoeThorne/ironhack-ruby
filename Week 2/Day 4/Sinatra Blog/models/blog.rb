require_relative "./post.rb"
require "pry"

class Blog
	def initialize
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
	end

	def show_posts
		sorted_posts = @posts.sort {|post1, post2| post2.date <=> post1.date}
	end
end

