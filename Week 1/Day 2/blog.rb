require "colorize"

class Blog
	def initialize
		@array = []
	end

	def add_post(post)
		@array.push(post)
	end

	def publish_front_page
		sorted_array = @array.sort {|post1, post2| post1.date <=> post2.date}
		paged_array = sorted_array.each_slice(3).to_a
		# check that user doesnt enter too big number
		# colors

		page = 0
		while page >= 0
			paged_array[page].each do |post|
			if post.instance_of?(SponsoredPost)
				puts "\n*******#{post.title}******* \n************\n#{post.date} \n************\n#{post.text}\n---------------\n\n"
			else
				puts "\n#{post.title} \n************\n#{post.date} \n************\n#{post.text}\n---------------\n\n"
			end
		end
			for x in 1..paged_array.length
				if x == page+1
					print "#{x} ".colorize(:color => :white, :background => :black)
				else
					print "#{x} "
				end
			end
			puts ""
			puts "Which page do you want to go? <press 0 to quit>"
			page = gets.chomp.to_i - 1
		end		
	end
end

class Post
	attr_accessor :title, :date, :text
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end
end

class SponsoredPost < Post
	attr_accessor :title, :date, :text
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end
end

blog = Blog.new
post_1 = Post.new("First post", Time.now, "This is the first post")
post_2 = Post.new("Second post", Time.now+1, "This is the second post")
post_3 = Post.new("Third post", Time.now+2, "This is the third post")
post_4 = SponsoredPost.new("Fourth post", Time.now+3, "This is the fourth post")
post_5 = SponsoredPost.new("Fifth post", Time.now+4, "This is the fifth post")
post_6 = SponsoredPost.new("Sixth post", Time.now+5, "This is the sixt post")
post_7 = SponsoredPost.new("Seventh post", Time.now+6, "This is the seventh post")
post_8 = SponsoredPost.new("Eight post", Time.now+7, "This is the eight post")
post_9 = SponsoredPost.new("Ninth post", Time.now+8, "This is the ninth post")
post_10 = SponsoredPost.new("Tenth post", Time.now+9, "This is the tenth post")

blog.add_post(post_1)
blog.add_post(post_2)
blog.add_post(post_3)
blog.add_post(post_4)
blog.add_post(post_5)
blog.add_post(post_6)
blog.add_post(post_7)
blog.add_post(post_8)
blog.add_post(post_9)
blog.add_post(post_10)
blog.publish_front_page