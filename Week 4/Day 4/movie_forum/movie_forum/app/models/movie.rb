require "themoviedb"
Tmdb::Api.key("7ff797c2799958357c0a45e8f65f45b2")

class Movie < ApplicationRecord

	attr_accessor :movies

	def self.search(searched_movie)
		@movies = Tmdb::Movie.find(searched_movie)
	end

end
