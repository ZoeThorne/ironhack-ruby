
class Post
	attr_accessor :title, :date, :text, :category, :author
	def initialize(title, date, text, category, author)
		@title = title
		@date = date
		@text = text
		@category = category
		@author = author
	end
end