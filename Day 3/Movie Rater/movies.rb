require "imdb"
require "pry"

class Movie
  attr_reader :title, :rating
  def initialize(movie)
    @title = Imdb::Search.new(movie).movies[0].title
    @rating = Imdb::Search.new(movie).movies[0].rating
  end
end

class Ratings
  attr_reader :movies
  def initialize
    @movies = read_movies
  end
  def add_ratings
    @movies = @movies.map{ |m| Movie.new(m) } #[{title: rating}{}{}]
  end
  def read_movies
    IO.read("movies.txt").split("\n")
  end
  def print_to_screen
    i = 9
    9.times do
      line = []
      @movies.each do |movie|
        point = movie.rating >= i ? "#" : " "
        line << "|#{point}"
      end
      line << "|"
      puts line.join("")
      i -= 1
    end
    @movies.size.times do print "--" end
    puts "-"
    m = 1
    while m <= @movies.size
      print "|#{m}"
      m += 1
    end
    puts "|"
    puts ""
    @movies.each_with_index do |movie, index|
      puts "#{index+1}. #{movie.title}"
    end
  end
end

ratings = Ratings.new
ratings.add_ratings
ratings.print_to_screen

binding.pry