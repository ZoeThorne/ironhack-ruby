require "themoviedb"
require "pry"

Tmdb::Api.key("7ff797c2799958357c0a45e8f65f45b2")

class Quiz
	attr_accessor :movies, :correct_film

	def initialize
		@movies = []
	end

	def search(word)
		@found_movies = Tmdb::Movie.find(word)
	end

	def add_movies
		@movies = []
			@found_movies.each do |movie|
				if movie.poster_path != nil
					@movies.push(movie)
				end
			end
		@movies = @movies[0..8]
	end

	def pick_a_movie
		@correct_film = @movies.sample
	end

	# def english_title
	# 	@movies.each do |movie|
	# 		if (movie.also_known_as.find {|movie| movie[:version] == "USA"}) != nil
	# 			english_title = movie.also_known_as.find {|movie| movie[:version] == "USA" }
	# 			puts english_title[:title]
	# 		else
	# 			puts movie.title
	# 		end
	# 	end
	# end

end

quiz = Quiz.new
quiz.search("funny")
quiz.add_movies

	
# binding.pry



# <% @films.each do |movie| %>
# 	<% if (movie.also_known_as.find {|movie| movie[:version] == "USA"}) != nil %>
# 		<% english_title = movie.also_known_as.find {|movie| movie[:version] == "USA" } %>
# 		<p><%= english_title[:title] %></p>
# 	<% elsif (movie.also_known_as.find {|movie| movie[:version] == "(original title)"}) != nil %>
# 		<% original_title = movie.also_known_as.find {|movie| movie[:version] == "(original title)" } %>
# 		<p><%= original_title[:title] %></p>
# 	<% else %>
# 		<p><%= movie.title %></p>
# 	<% end %>
# <% end %>