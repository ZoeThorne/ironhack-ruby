require_relative("../models/blog.rb")

RSpec.describe Blog do
	before(:each) do
		@blog = Blog.new
	end	


	it("should return an array of posts") do
		expect(@blog.show_posts).to be_a (Array)
	end

	it("should add a post to the array when prompted") do
		@blog.add_post(Post.new("Title", Time.now, "Text"))
		expect(@blog.show_posts.length).to eq(1)
	end

	it ("should sort the array of posts by date") do
		@blog.add_post(Post.new("Old Post", Time.now, "Text"))
		@blog.add_post(Post.new("New Post", Time.now+1, "Text"))
		expect(@blog.show_posts[1].title).to eq("Old Post")
	end
end