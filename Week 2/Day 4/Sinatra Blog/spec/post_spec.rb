require_relative("../models/post.rb")

RSpec.describe Post do
	let(:post) { Post.new("Title", "Date", "Text")}	


	it("should store the title") do
		expect(post.title).to eq ("Title")
	end

	it("should store the date") do
		expect(post.date).to eq ("Date")
	end

	it("should store the text") do
		expect(post.text).to eq ("Text")
	end

	
end